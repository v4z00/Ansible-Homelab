#!/usr/bin/env bash
set -euo pipefail
source "${CONTROL_PROJECT_ROOT:?}/lib/control/helpers.sh"
run_playbook_logged openwrt-gui playbooks/network/openwrt/manage_openwrt_gui.yml -e state=off "$@"
