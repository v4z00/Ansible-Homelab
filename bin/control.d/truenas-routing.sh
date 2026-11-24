#!/usr/bin/env bash
set -euo pipefail
source "${CONTROL_PROJECT_ROOT:?}/lib/control/helpers.sh"
run_playbook_logged truenas-routing playbooks/storage/truenas/configure_routing.yml "$@"
