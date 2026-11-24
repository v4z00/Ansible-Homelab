#!/usr/bin/env bash
set -euo pipefail
source "${CONTROL_PROJECT_ROOT:?}/lib/control/helpers.sh"
run_playbook_logged wan-check playbooks/maintenance/wan_check.yaml "$@"
if bash bin/control list | grep -qx openwrt-health; then
  run_playbook_logged wan-check-openwrt playbooks/network/openwrt/check_wan.yml "$@"
fi
