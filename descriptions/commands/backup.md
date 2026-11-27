# Run a backup with completion notification

Run: `bin/control backup [options]`.

Aliases: `backup-full`, `backup`.

Feature: `backup`.

Registry prerequisites:
- `lib/control/helpers.sh`
- `playbooks/backup/run_ansible_backup.sh`

## Assign backup sources

Assign target hosts locally to the inventory groups `bond_monitor_backup_hosts` and `certificate_backup_hosts`. Specify absolute source paths in `bond_monitor_backup_paths` and `certificate_backup_paths`.

## Parameters

## Sources and maintenance

- `bin/control.d/backup.json`
- `bin/control.d/backup.sh`

## Central completion report

From Ansible-Allgm 0.4.0, with the job controller configured, the wrapper records all seven backup parts in its SQLite database. A failing part allows other backups to continue, but the wrapper returns nonzero. Missing inventory assignments before the first play also count as failures. The central summary includes these Ansible results, and the wrapper sends no duplicate email or Telegram notification.

Without a configured job controller the existing completion message remains in use. Updating code alone does not activate a new summary schedule or modify existing backup cron entries. For a pilot, query stored results before starting new backups.

<details>
<summary>Deutsch</summary>

# Backup mit Abschlussmeldung starten

Aufruf: `bin/control backup [Optionen]`.

Vorhandene Kurzformen: `backup-full`, `backup`.

Der Befehl gehört zum Feature `backup`.

Voraussetzungen laut Registry:
- `lib/control/helpers.sh`
- `playbooks/backup/run_ansible_backup.sh`

## Sicherungsquellen zuordnen

Ordne die gewünschten Hosts lokal den Inventory-Gruppen `bond_monitor_backup_hosts` und `certificate_backup_hosts` zu. Hinterlege die absoluten Quellpfade in `bond_monitor_backup_paths` und `certificate_backup_paths`.

## Parameter für die TUI

## Quellen und Pflege

- `bin/control.d/backup.json`
- `bin/control.d/backup.sh`

## Zentraler Abschlussbericht

Ab Ansible-Allgm 0.4.0 und eingerichtetem Jobcontroller zeichnet der Wrapper alle
sieben Backupteile in dessen SQLite auf. Fehlerhafte Teile verhindern nicht die
übrigen Sicherungen; der Gesamtaufruf bleibt bei einem Fehler ungleich null.
Auch fehlende Inventory-Zuordnungen vor dem ersten Play werden als Fehler erfasst.
Die spätere zentrale Job-Zusammenfassung enthält diese Ansible-Ergebnisse.
Der Wrapper sendet dann keine zusätzliche eigene Telegram-/Mailmeldung.

Ohne eingerichteten Jobcontroller gilt weiterhin die bisherige Abschlussmeldung.
Das Codeupdate allein aktiviert keinen neuen Summary-Zeitplan und ändert keine
produktiven Backup-Crons. Ein Pilot sollte zuerst ohne neue Backupstarts die
bereits gespeicherten Ergebnisse abfragen.

</details>

<details>
<summary>Catalog metadata (JSON)</summary>

```json
{
  "schema_version": 1,
  "kind": "command",
  "ref": "backup",
  "title": "Vollstaendigen Backup-Wrapper inklusive Meldung starten",
  "documented": false,
  "fields": [],
  "constraints": [],
  "sources": [
    "bin/control.d/backup.json",
    "bin/control.d/backup.sh",
    "playbooks/backup/run_ansible_backup.sh"
  ],
  "source_hashes": {
    "bin/control.d/backup.json": "da3baa21b4a41986dfda5380d273cb177b7158df5a1e829796644f9c3fd6a4f8",
    "bin/control.d/backup.sh": "64a2959ac44fce911cf8726d05de0e080841789ce38fddba80a80a2577c7549b",
    "playbooks/backup/run_ansible_backup.sh": "1b5217984e28b2156fae42bfeeeb1e0d91e5cfe5f60842b4dbfcb9cda95cf1e0"
  },
  "i18n": {
    "de": {
      "title": "Vollstaendigen Backup-Wrapper inklusive Meldung starten",
      "description": "# Backup mit Abschlussmeldung starten\n\nAufruf: `bin/control backup [Optionen]`.\n\nVorhandene Kurzformen: `backup-full`, `backup`.\n\nDer Befehl gehört zum Feature `backup`.\n\nVoraussetzungen laut Registry:\n- `lib/control/helpers.sh`\n- `playbooks/backup/run_ansible_backup.sh`\n\n## Sicherungsquellen zuordnen\n\nOrdne die gewünschten Hosts lokal den Inventory-Gruppen `bond_monitor_backup_hosts` und `certificate_backup_hosts` zu. Hinterlege die absoluten Quellpfade in `bond_monitor_backup_paths` und `certificate_backup_paths`.\n\n## Parameter für die TUI\n\n## Quellen und Pflege\n\n- `bin/control.d/backup.json`\n- `bin/control.d/backup.sh`\n\n## Zentraler Abschlussbericht\n\nAb Ansible-Allgm 0.4.0 und eingerichtetem Jobcontroller zeichnet der Wrapper alle\nsieben Backupteile in dessen SQLite auf. Fehlerhafte Teile verhindern nicht die\nübrigen Sicherungen; der Gesamtaufruf bleibt bei einem Fehler ungleich null.\nAuch fehlende Inventory-Zuordnungen vor dem ersten Play werden als Fehler erfasst.\nDie spätere zentrale Job-Zusammenfassung enthält diese Ansible-Ergebnisse.\nDer Wrapper sendet dann keine zusätzliche eigene Telegram-/Mailmeldung.\n\nOhne eingerichteten Jobcontroller gilt weiterhin die bisherige Abschlussmeldung.\nDas Codeupdate allein aktiviert keinen neuen Summary-Zeitplan und ändert keine\nproduktiven Backup-Crons. Ein Pilot sollte zuerst ohne neue Backupstarts die\nbereits gespeicherten Ergebnisse abfragen.",
      "fields": {}
    },
    "en": {
      "title": "Run the full backup wrapper with notifications",
      "description": "# Run a backup with completion notification\n\nRun: `bin/control backup [options]`.\n\nAliases: `backup-full`, `backup`.\n\nFeature: `backup`.\n\nRegistry prerequisites:\n- `lib/control/helpers.sh`\n- `playbooks/backup/run_ansible_backup.sh`\n\n## Assign backup sources\n\nAssign target hosts locally to the inventory groups `bond_monitor_backup_hosts` and `certificate_backup_hosts`. Specify absolute source paths in `bond_monitor_backup_paths` and `certificate_backup_paths`.\n\n## Parameters\n\n## Sources and maintenance\n\n- `bin/control.d/backup.json`\n- `bin/control.d/backup.sh`\n\n## Central completion report\n\nFrom Ansible-Allgm 0.4.0, with the job controller configured, the wrapper records all seven backup parts in its SQLite database. A failing part allows other backups to continue, but the wrapper returns nonzero. Missing inventory assignments before the first play also count as failures. The central summary includes these Ansible results, and the wrapper sends no duplicate email or Telegram notification.\n\nWithout a configured job controller the existing completion message remains in use. Updating code alone does not activate a new summary schedule or modify existing backup cron entries. For a pilot, query stored results before starting new backups.",
      "fields": {}
    }
  }
}
```

</details>
