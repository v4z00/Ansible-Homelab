#!/usr/bin/env bash
set -euo pipefail
source "${CONTROL_PROJECT_ROOT:?}/lib/control/helpers.sh"
run_playbook_logged openwrt-mac-vlans playbooks/network/openwrt/configure_mac_vlans.yml "$@"
