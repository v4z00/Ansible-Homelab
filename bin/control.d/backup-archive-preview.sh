#!/usr/bin/env bash
set -euo pipefail
source "${CONTROL_PROJECT_ROOT:?}/lib/control/helpers.sh"
run_playbook_logged backup-archive-preview playbooks/backup/archive_legacy.yml "$@"
