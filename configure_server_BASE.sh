#!/usr/bin/env bash
set -uo pipefail

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
cd "${ROOT_DIR}"
source "${ROOT_DIR}/lib/controller_environment.sh"

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
  printf '%bFehler: %s%b\n' "${RED}" "$1" "${NC}" >&2
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

command -v ansible-playbook >/dev/null 2>&1 || die 'ansible-playbook ist nicht installiert oder nicht im PATH.'
command -v ansible-inventory >/dev/null 2>&1 || die 'ansible-inventory ist nicht installiert oder nicht im PATH.'
[[ -f "${SETTINGS_FILE}" ]] || die "${SETTINGS_FILE} fehlt."

site_id="$(yaml_scalar "${SETTINGS_FILE}" site_id)"
auth_mode="$(yaml_scalar "${SETTINGS_FILE}" ansible_auth_mode)"
inventory_mode="$(yaml_scalar "${ROOT_DIR}/inventory_config.yml" inventory_mode)"

case "${auth_mode}" in
  password_all|key_only|password_users_only) ;;
  *) die "Ungueltiger ansible_auth_mode '${auth_mode:-nicht gesetzt}'. Erlaubt: password_all, key_only, password_users_only." ;;
esac

printf '%b--- Konsolidierter Baseconfig-Runner: %s ---%b\n' "${BLUE}" "${site_id:-unbekannt}" "${NC}"
printf 'Authentifizierung: %s | Inventory: %s\n' "${auth_mode:-unbekannt}" "${inventory_mode:-statisch}"

if [[ "${inventory_mode}" == 'proxmox' ]]; then
  missing_tokens="$(missing_proxmox_credentials)"
  if [[ -z "${missing_tokens}" ]]; then
    read -r -p 'Proxmox-Inventory jetzt aktualisieren? [Y/n]: ' update_inventory
    if [[ ! "${update_inventory:-y}" =~ ^[Nn]$ ]]; then
      "${ROOT_DIR}/bin/control" inventory || die 'Inventory-Aktualisierung fehlgeschlagen.'
    fi
  else
    printf '%bProxmox-Token(s) fehlen fuer Credential-ID(s): %s; vorhandenes statisches/generiertes Inventory wird verwendet.%b\n' "${YELLOW}" "${missing_tokens}" "${NC}"
  fi
fi

printf '\n%bVerfuegbare Hosts und Gruppen:%b\n' "${CYAN}" "${NC}"
ansible-inventory -i "${INVENTORY_DIR}" --graph || die 'Inventory ist ungueltig.'

read -r -p 'Zielhost/-gruppe [all_linux_systems]: ' target_hosts
target_hosts="${target_hosts:-all_linux_systems}"

common_options=()
if [[ "${auth_mode}" == 'password_all' || "${auth_mode}" == 'password_users_only' ]]; then
  if secret_is_set managed_access_default_password; then
    read -r -p 'SSH-Passwort trotz hinterlegtem Standardwert interaktiv abfragen? [y/N]: ' ask_ssh
    [[ "${ask_ssh:-n}" =~ ^[Yy]$ ]] && common_options+=(--ask-pass)
  else
    read -r -p 'Kein SSH-Passwort gespeichert. Interaktiv abfragen? [Y/n]: ' ask_ssh
    [[ ! "${ask_ssh:-y}" =~ ^[Nn]$ ]] && common_options+=(--ask-pass)
  fi
fi

if ! secret_is_set managed_access_default_become_password; then
  read -r -p 'Become-/sudo-Passwort interaktiv abfragen? [y/N]: ' ask_become
  [[ "${ask_become:-n}" =~ ^[Yy]$ ]] && common_options+=(--ask-become-pass)
fi

read -r -p 'Modus: Check-Mode oder echter Lauf? [c/R]: ' execution_mode
if [[ "${execution_mode:-r}" =~ ^[Cc]$ ]]; then
  common_options+=(--check --diff)
  mode_label='CHECK-MODE'
else
  mode_label='ECHTER LAUF'
fi

read -r -p 'Verbosity [leer/v/vv/vvv]: ' verbosity
if [[ -n "${verbosity}" ]]; then
  [[ "${verbosity}" =~ ^v{1,3}$ ]] || die 'Verbosity muss v, vv oder vvv sein.'
  common_options+=("-${verbosity}")
fi

labels=(
  'Verbindungstest'
  'SSH-Key bootstrap'
  'Basispakete'
  'Zeitzone und Chrony'
  'Fail2ban'
  'MOTD'
  'SSH-Hardening'
  'Komplettes Security-Hardening'
  'Komplette Baseconfig'
  'CheckMK-Agent und Hostverwaltung'
  'Optionale zentrale Dienste'
  'Lynis-Audit'
  'Vollstaendiger Standortlauf'
  'Skript- und Backup-Pfade vorbereiten'
  'Zsh Command Center'
  'Telegraf-Agent'
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

printf '\n%bAuswahl:%b\n' "${CYAN}" "${NC}"
for index in "${!labels[@]}"; do
  printf '  %2d) %s\n' "$((index + 1))" "${labels[$index]}"
done
printf '   b) Empfohlene komplette Baseconfig\n'
printf '   a) Vollstaendiger Standortlauf\n'
printf '   s) Eigene Auswahl\n'
read -r -p 'Auswahl [b]: ' selection_mode
selection_mode="${selection_mode:-b}"

selected=()
case "${selection_mode}" in
  b|B) selected+=(8) ;;
  a|A) selected+=(12) ;;
  s|S)
    read -r -p 'Nummern, mit Leerzeichen oder Komma getrennt: ' custom_selection
    custom_selection="${custom_selection//,/ }"
    for number in ${custom_selection}; do
      [[ "${number}" =~ ^[0-9]+$ ]] || die "Ungueltige Auswahl: ${number}"
      (( number >= 1 && number <= ${#labels[@]} )) || die "Auswahl ausserhalb des Bereichs: ${number}"
      selected+=("$((number - 1))")
    done
    ;;
  [0-9]*)
    number="${selection_mode}"
    (( number >= 1 && number <= ${#labels[@]} )) || die "Auswahl ausserhalb des Bereichs: ${number}"
    selected+=("$((number - 1))")
    ;;
  *) die 'Ungueltige Auswahl.' ;;
esac
(( ${#selected[@]} > 0 )) || die 'Keine Aktion ausgewaehlt.'

printf '\nZiel: %s | Modus: %s\n' "${target_hosts}" "${mode_label}"
for index in "${selected[@]}"; do
  label="${labels[$index]}"
  playbook="${playbooks[$index]}"
  tag="${tags[$index]}"
  read -r -p "${label} ausfuehren? [Y/n/q]: " confirmation
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

  printf '%bStarte: %s%b\n' "${BLUE}" "${label}" "${NC}"
  if ! "${command[@]}"; then
    printf '%bFehler bei: %s%b\n' "${RED}" "${label}" "${NC}" >&2
    read -r -p 'Mit der naechsten Aktion fortfahren? [y/N]: ' continue_after_error
    [[ "${continue_after_error:-n}" =~ ^[Yy]$ ]] || exit 1
  else
    printf '%bErfolgreich: %s%b\n' "${GREEN}" "${label}" "${NC}"
  fi
done

printf '%bBaseconfig-Runner beendet.%b\n' "${GREEN}" "${NC}"
