#!/usr/bin/env bash
set -euo pipefail
source "${CONTROL_PROJECT_ROOT:?}/lib/control/helpers.sh"
run_playbook_logged dns-check playbooks/maintenance/check-dns.yml "$@"
if bash bin/control list | grep -qx openwrt-health; then
  run_playbook_logged dns-check-openwrt playbooks/network/openwrt/check_dns.yml "$@"
fi
