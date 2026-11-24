#!/usr/bin/env bash
set -euo pipefail
source "${CONTROL_PROJECT_ROOT:?}/lib/control/helpers.sh"
run_playbook_logged openwrt-health playbooks/network/openwrt/openwrt_health_check.yml "$@"
