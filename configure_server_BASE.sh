#!/usr/bin/env bash
set -uo pipefail

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
cd "${ROOT_DIR}"
source "${ROOT_DIR}/lib/controller_environment.sh"
source "${ROOT_DIR}/lib/control/i18n.sh"
case "${1-}" in
  --lang) [[ $# == 2 ]] || { echo 'Usage: --lang de|en' >&2; exit 2; }; CONTROLLER_LANG=$2 ;;
  --lang=*) CONTROLLER_LANG=${1#*=} ;;
esac
case "${CONTROLLER_LANG-}" in
  de|en) export CONTROLLER_LANG ;;
  '') CONTROLLER_LANG=$(python3 "$ROOT_DIR/scripts/controller_i18n.py" language --root "$ROOT_DIR") || exit 2; export CONTROLLER_LANG ;;
  *) echo 'Usage: --lang de|en' >&2; exit 2 ;;
esac

INVENTORY_DIR="${ROOT_DIR}/inventory"
SETTINGS_FILE="${ROOT_DIR}/group_vars/all/settings.yml"
SECRETS_FILE="${ROOT_DIR}/group_vars/all/secrets.yml"

RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
CYAN='\033[0;36m'
NC='\033[0m'

die() {
  printf '%b%s%b\n' "$RED" "$(controller_tr baseconfig.error "detail=$1")" "$NC" >&2
  exit 1
}

yaml_scalar() {
  local file="$1" key="$2"
  awk -v wanted="${key}" '
    $0 ~ "^[[:space:]]*" wanted ":[[:space:]]*" {
      sub("^[[:space:]]*" wanted ":[[:space:]]*", "")
      sub(/[[:space:]]+#.*$/, "")
      gsub(/^['"'"']|['"'"']$/, "")
      print
      exit
    }
  ' "${file}"
}

secret_is_set() {
  local value
  [[ -f "${SECRETS_FILE}" ]] || return 1
  value="$(yaml_scalar "${SECRETS_FILE}" "$1")"
  [[ -n "${value}" && "${value}" != '""' && "${value}" != "''" && "${value}" != '~' && "${value}" != 'null' ]]
}

missing_proxmox_credentials() {
  python3 - "${ROOT_DIR}/inventory_config.yml" "${SECRETS_FILE}" <<'PY'
import sys
from pathlib import Path
import yaml

config = yaml.safe_load(open(sys.argv[1], encoding='utf-8')) or {}
secrets = yaml.safe_load(open(sys.argv[2], encoding='utf-8')) or {} if Path(sys.argv[2]).is_file() else {}
sources = config.get('proxmox_sources')
if sources is None:
    sources = [dict(config.get('proxmox') or {}, name='default', credential='default')]
tokens = secrets.get('proxmox_token_secrets') or {}
missing = []
for source in sources:
    credential = str(source.get('credential') or source.get('name') or 'default')
    value = tokens.get(credential)
    if not value and len(sources) == 1:
        value = secrets.get('proxmox_token_secret') or secrets.get('proxmox_api_token')
    if not value:
        missing.append(credential)
print(', '.join(missing))
PY
}

command -v ansible-playbook >/dev/null 2>&1 || die "$(controller_tr baseconfig.missing_playbook)"
command -v ansible-inventory >/dev/null 2>&1 || die "$(controller_tr baseconfig.missing_inventory)"
[[ -f "${SETTINGS_FILE}" ]] || die "$(controller_tr baseconfig.settings "path=$SETTINGS_FILE")"

site_id="$(yaml_scalar "${SETTINGS_FILE}" site_id)"
auth_mode="$(yaml_scalar "${SETTINGS_FILE}" ansible_auth_mode)"
inventory_mode="$(yaml_scalar "${ROOT_DIR}/inventory_config.yml" inventory_mode)"

case "${auth_mode}" in
  password_all|key_only|password_users_only) ;;
  *) die "$(controller_tr baseconfig.auth_mode)" ;;
esac

printf '%b%s%b\n' "$BLUE" "$(controller_tr baseconfig.title "site=${site_id:--}")" "$NC"
printf '%s\n' "$(controller_tr baseconfig.access "auth=${auth_mode:--}" "inventory=${inventory_mode:-static}")"

if [[ "${inventory_mode}" == 'proxmox' ]]; then
  missing_tokens="$(missing_proxmox_credentials)"
  if [[ -z "${missing_tokens}" ]]; then
    read -r -p "$(controller_tr baseconfig.refresh)" update_inventory
    if [[ ! "${update_inventory:-y}" =~ ^[Nn]$ ]]; then
      "${ROOT_DIR}/bin/control" inventory || die "$(controller_tr baseconfig.refresh_failed)"
    fi
  else
    printf '%b%s%b\n' "$YELLOW" "$(controller_tr baseconfig.no_tokens "ids=$missing_tokens")" "$NC"
  fi
fi

printf '\n%b%s%b\n' "$CYAN" "$(controller_tr baseconfig.hosts)" "$NC"
ansible-inventory -i "${INVENTORY_DIR}" --graph || die "$(controller_tr baseconfig.invalid_inventory)"

read -r -p "$(controller_tr baseconfig.target)" target_hosts
target_hosts="${target_hosts:-all_linux_systems}"

common_options=()
if [[ "${auth_mode}" == 'password_all' || "${auth_mode}" == 'password_users_only' ]]; then
  if secret_is_set managed_access_default_password; then
    read -r -p "$(controller_tr baseconfig.ask_ssh)" ask_ssh
    [[ "${ask_ssh:-n}" =~ ^[Yy]$ ]] && common_options+=(--ask-pass)
  else
    read -r -p "$(controller_tr baseconfig.ask_new_ssh)" ask_ssh
    [[ ! "${ask_ssh:-y}" =~ ^[Nn]$ ]] && common_options+=(--ask-pass)
  fi
fi

if ! secret_is_set managed_access_default_become_password; then
  read -r -p "$(controller_tr baseconfig.ask_become)" ask_become
  [[ "${ask_become:-n}" =~ ^[Yy]$ ]] && common_options+=(--ask-become-pass)
fi

read -r -p "$(controller_tr baseconfig.select_mode)" execution_mode
if [[ "${execution_mode:-r}" =~ ^[Cc]$ ]]; then
  common_options+=(--check --diff)
  mode_label="$(controller_tr baseconfig.check)"
else
  mode_label="$(controller_tr baseconfig.live)"
fi

read -r -p "$(controller_tr baseconfig.verbosity)" verbosity
if [[ -n "${verbosity}" ]]; then
  [[ "${verbosity}" =~ ^v{1,3}$ ]] || die "$(controller_tr baseconfig.bad_verbosity)"
  common_options+=("-${verbosity}")
fi

labels=(
  "$(controller_tr baseconfig.ping)"
  "$(controller_tr baseconfig.bootstrap)"
  "$(controller_tr baseconfig.base_packages)"
  "$(controller_tr baseconfig.timezone)"
  "$(controller_tr baseconfig.fail2ban)"
  "$(controller_tr baseconfig.motd)"
  "$(controller_tr baseconfig.ssh)"
  "$(controller_tr baseconfig.hardening)"
  "$(controller_tr baseconfig.full_base)"
  "$(controller_tr baseconfig.checkmk)"
  "$(controller_tr baseconfig.services)"
  "$(controller_tr baseconfig.lynis)"
  "$(controller_tr baseconfig.site)"
  "$(controller_tr baseconfig.paths)"
  'Zsh Command Center'
  "$(controller_tr baseconfig.telegraf)"
)
playbooks=(
  '__ping__'
  'playbooks/bootstrap.yml'
  'playbooks/base.yml'
  'playbooks/base.yml'
  'playbooks/base.yml'
  'playbooks/base.yml'
  'playbooks/base.yml'
  'playbooks/base.yml'
  'playbooks/base.yml'
  'playbooks/checkmk.yml'
  'playbooks/optional.yml'
  'playbooks/lynis.yml'
  'playbooks/site.yml'
  'playbooks/maintenance/prepare_paths.yml'
  'playbooks/zsh.yml'
  'playbooks/monitoring/deploy_telegraf.yml'
)
tags=(
  ''
  ''
  'packages'
  'chrony'
  'fail2ban'
  'motd'
  'ssh'
  'hardening'
  ''
  ''
  ''
  ''
  ''
  ''
  ''
  ''
)

printf '\n%b%s%b\n' "$CYAN" "$(controller_tr baseconfig.actions)" "$NC"
for index in "${!labels[@]}"; do
  printf '  %2d) %s\n' "$((index + 1))" "${labels[$index]}"
done
controller_tr baseconfig.default_action
controller_tr baseconfig.site_action
controller_tr baseconfig.custom
read -r -p "$(controller_tr baseconfig.choice)" selection_mode
selection_mode="${selection_mode:-b}"

selected=()
case "${selection_mode}" in
  b|B) selected+=(8) ;;
  a|A) selected+=(12) ;;
  s|S)
    read -r -p "$(controller_tr baseconfig.numbers)" custom_selection
    custom_selection="${custom_selection//,/ }"
    for number in ${custom_selection}; do
      [[ "${number}" =~ ^[0-9]+$ ]] || die "$(controller_tr baseconfig.bad_number "number=$number")"
      (( number >= 1 && number <= ${#labels[@]} )) || die "$(controller_tr baseconfig.range "number=$number")"
      selected+=("$((number - 1))")
    done
    ;;
  [0-9]*)
    number="${selection_mode}"
    (( number >= 1 && number <= ${#labels[@]} )) || die "$(controller_tr baseconfig.range "number=$number")"
    selected+=("$((number - 1))")
    ;;
  *) die "$(controller_tr baseconfig.invalid_choice)" ;;
esac
(( ${#selected[@]} > 0 )) || die "$(controller_tr baseconfig.no_actions)"

printf '\n%s\n' "$(controller_tr baseconfig.summary "target=$target_hosts" "mode=$mode_label")"
for index in "${selected[@]}"; do
  label="${labels[$index]}"
  playbook="${playbooks[$index]}"
  tag="${tags[$index]}"
  read -r -p "$(controller_tr baseconfig.confirm "label=$label")" confirmation
  [[ "${confirmation:-y}" =~ ^[Qq]$ ]] && exit 0
  [[ "${confirmation:-y}" =~ ^[Nn]$ ]] && continue

  if [[ "${playbook}" == '__ping__' ]]; then
    command=(ansible all_linux_systems -i "${INVENTORY_DIR}" --limit "${target_hosts}" -m ansible.builtin.ping)
    for option in "${common_options[@]}"; do
      [[ "${option}" == '--check' || "${option}" == '--diff' || "${option}" == '--ask-become-pass' ]] || command+=("${option}")
    done
  else
    command=(ansible-playbook -i "${INVENTORY_DIR}" "${playbook}" --limit "${target_hosts}")
    [[ -n "${tag}" ]] && command+=(--tags "${tag}")
    command+=("${common_options[@]}")
  fi

  printf '%b%s%b\n' "$BLUE" "$(controller_tr baseconfig.start "label=$label")" "$NC"
  if ! "${command[@]}"; then
    printf '%b%s%b\n' "$RED" "$(controller_tr baseconfig.failed "label=$label")" "$NC" >&2
    read -r -p "$(controller_tr baseconfig.continue)" continue_after_error
    [[ "${continue_after_error:-n}" =~ ^[Yy]$ ]] || exit 1
  else
    printf '%b%s%b\n' "$GREEN" "$(controller_tr baseconfig.success "label=$label")" "$NC"
  fi
done

printf '%b%s%b\n' "$GREEN" "$(controller_tr baseconfig.done)" "$NC"
