#!/usr/bin/env bash
set -euo pipefail
source "${CONTROL_PROJECT_ROOT:?}/lib/control/helpers.sh"
run_playbook_logged openwrt-clients playbooks/network/openwrt/openwrt_client_stats.yml "$@"
