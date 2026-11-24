# Vollstaendigen Backup-Wrapper inklusive Meldung starten

Vollstaendigen Backup-Wrapper inklusive Meldung starten

Aufruf: `bin/control backup [Optionen]`.

Vorhandene Kurzformen: `backup-full`, `backup`.

Feature: backup. Die aktuelle Aktivierung prueft weiterhin Control.

Keine vollstaendige strukturierte Parameterbeschreibung im Bestand. Den bestehenden Terminalablauf und dessen Hilfe verwenden; keine Optionen erfinden.

Voraussetzungen laut Registry:
- `lib/control/helpers.sh`
- `playbooks/backup/run_ansible_backup.sh`

## Parameter und maschinenlesbarer Vertrag

Die Angaben stammen aus den aufgefuehrten Quellen. Fehlende Erklaerungen sind
als solche markiert. Defaults sind Hinweise und werden nicht automatisch gesetzt.
Vertrauliche Werte werden nicht dokumentiert.

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

Diese Datei ist die Pflegequelle fuer Mensch und Add-on. Bei Codeaenderungen
Beschreibung und Quellhashs gemeinsam pruefen. Die Datenbank ist nur Cache.
