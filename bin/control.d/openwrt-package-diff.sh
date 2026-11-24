#!/usr/bin/env bash
set -euo pipefail
source "${CONTROL_PROJECT_ROOT:?}/lib/control/helpers.sh"
run_playbook_logged openwrt-package-diff playbooks/network/openwrt/compare_packages.yml "$@"
