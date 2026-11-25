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
  }
}
```

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
