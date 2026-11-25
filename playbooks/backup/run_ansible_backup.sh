#!/usr/bin/env bash
set -uo pipefail

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/../.." && pwd)"
cd "${ROOT_DIR}"
EXTRA_ARGS=("$@")
PLAYBOOK_RUNNER=ansible-playbook
JOBS_DATABASE=''
if [[ -f config/script_jobs_controller.json && -f lib/control/helpers.sh ]]; then
    export CONTROL_PROJECT_ROOT="${ROOT_DIR}"
    source lib/control/helpers.sh
    PLAYBOOK_RUNNER=run_playbook_with_jobs
    JOBS_DATABASE=$(python3 -c 'import json; print(json.load(open("config/script_jobs_controller.json"))["database"])') || exit 1
fi

log_message() {
    printf '\033[1;36m[%s]\033[0m %b\n' "$(date +'%H:%M:%S')" "$1"
}

record_inventory_failure() {
    [[ -n "$JOBS_DATABASE" ]] || return 0
    record_control_failure ansible:backup-inventory "$1" "$2"
}

run_job() {
    local name=$1
    local playbook=$2
    local group=$3
    local hosts exit_code log_file

    log_message "Starte Backup: \033[1;33m${name}\033[0m ..."
    if ! hosts=$(ansible "${group}" --list-hosts 2>/dev/null); then
        log_message "❌ ${name}: Inventory-Fehler"
        SUMMARY+=$'\n'"❌ ${name}: Inventory-Fehler"
        record_inventory_failure "$name" 'Inventory konnte nicht gelesen werden.' || return 1
        OVERALL_FAILED=1
        return 0
    fi
    if ! printf '%s\n' "${hosts}" | awk 'NR > 1 && NF { found = 1 } END { exit !found }'; then
        log_message "❌ ${name}: Keine Zielhosts"
        SUMMARY+=$'\n'"❌ ${name}: Keine Zielhosts"
        record_inventory_failure "$name" 'Keine Zielhosts fuer diesen Backupteil.' || return 1
        OVERALL_FAILED=1
        return 0
    fi

    mkdir -p logs
    log_file="logs/backup-$(date -u +'%Y%m%dT%H%M%SZ')-${playbook%.*}.log"
    if ANSIBLE_LOG_PATH="${ROOT_DIR}/${log_file}" "$PLAYBOOK_RUNNER" \
        "playbooks/backup/${playbook}" "${EXTRA_ARGS[@]}"; then
        log_message "✅ ${name}: \033[1;32mOK\033[0m"
        SUMMARY+=$'\n'"✅ ${name}: Erfolgreich"
    else
        exit_code=$?
        log_message "❌ ${name}: Ansible Error (Exit ${exit_code})"
        SUMMARY+=$'\n'"❌ ${name}: Fehlgeschlagen (Exit ${exit_code})"
        OVERALL_FAILED=1
    fi
}

OVERALL_FAILED=0
SUMMARY=""
TIMESTAMP=$(date +'%Y-%m-%d %H:%M:%S')
log_message "--- Starte Backup-Zyklus ---"

run_job "Cron-Jobs" "backup_cron.yml" "all_linux_systems"
run_job "FSTAB" "backup_fstab.yml" "all_script_hosts"
run_job "OpenWrt" "backup_openwrt.yml" "openwrt_router"
run_job "Skripte" "backup_scripte.yaml" "all_script_hosts"
run_job "Proxmox /root" "backup_proxmox_root.yml" "checkmk_proxmox_hosts"
run_job "Bond-Monitor" "backup_bond_monitor.yml" "bond_monitor_backup_hosts"
run_job "Zertifikatsdateien" "backup_certificates.yml" "certificate_backup_hosts"

FINAL_STATUS="ERFOLGREICH"
if [[ ${OVERALL_FAILED} -ne 0 ]]; then
    FINAL_STATUS="FEHLERHAFT"
fi

summary_file=$(mktemp)
trap 'rm -f "${summary_file}"' EXIT
printf 'Ansible Backup Report\n%s\nStatus: %s\n%s\n' \
    "${TIMESTAMP}" "${FINAL_STATUS}" "${SUMMARY}" > "${summary_file}"

if [[ "$PLAYBOOK_RUNNER" == ansible-playbook ]]; then
    if ! ansible-playbook playbooks/backup/notify.yml \
        -e "backup_summary_file=${summary_file}"; then
        log_message "❌ Backup-Benachrichtigung fehlgeschlagen."
        OVERALL_FAILED=1
    fi
else
    log_message 'Backup-Ergebnisse gespeichert; Versand mit der zentralen Job-Zusammenfassung.'
fi

log_message "--- Ende (Status: ${FINAL_STATUS}) ---"
exit "${OVERALL_FAILED}"
