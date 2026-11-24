#!/usr/bin/env bash
set -euo pipefail
source "${CONTROL_PROJECT_ROOT:?}/lib/control/helpers.sh"
run_playbook_notified openwrt-reboot "OpenWrt-Neustart" playbooks/network/openwrt/openwrt_reboot.yml "$@"
