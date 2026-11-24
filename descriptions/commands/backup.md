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
    "bin/control.d/backup.sh"
  ],
  "source_hashes": {
    "bin/control.d/backup.json": "da3baa21b4a41986dfda5380d273cb177b7158df5a1e829796644f9c3fd6a4f8",
    "bin/control.d/backup.sh": "64a2959ac44fce911cf8726d05de0e080841789ce38fddba80a80a2577c7549b"
  }
}
```

## Quellen und Pflege

- `bin/control.d/backup.json`
- `bin/control.d/backup.sh`
