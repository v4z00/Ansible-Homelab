#!/usr/bin/env bash
set -euo pipefail
source "${CONTROL_PROJECT_ROOT:?}/lib/control/helpers.sh"
run_playbook_logged backup-archive-apply playbooks/backup/archive_legacy.yml -e archive_apply=true "$@"
