#!/usr/bin/env bash
set -euo pipefail
source "${CONTROL_PROJECT_ROOT:?}/lib/control/helpers.sh"
run_playbook_notified controller-backup 'Controller-Konfigurationsbackup' playbooks/backup/backup_controller_configs.yml "$@"
