#!/usr/bin/env bash
set -euo pipefail
status=$1
shift
trap 'printf "%s\n" "$?" > "$status"' EXIT
ROOT_DIR=$(cd -- "$(dirname -- "$0")/.." && pwd)
export CONTROL_PROJECT_ROOT="$ROOT_DIR"
source "$ROOT_DIR/lib/controller_environment.sh"
source "$ROOT_DIR/lib/control/helpers.sh"

has_limit=false
preview=false
for arg in "$@"; do
  case "$arg" in
    --limit|--limit=*|-l|-l?*) has_limit=true ;;
    --check|-C|--syntax-check|--list-hosts|--list-tasks|--list-tags) preview=true ;;
  esac
done
if [[ $has_limit == false ]]; then set -- --limit openwrt_router "$@"; fi
playbook=playbooks/network/openwrt/openwrt_reboot.yml
if [[ $preview == true ]]; then
  run_playbook_logged openwrt-reboot "$playbook" "$@"
else
  run_playbook_notified openwrt-reboot "OpenWrt-Neustart" "$playbook" "$@"
fi
