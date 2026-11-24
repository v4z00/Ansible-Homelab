# Alte automatische Backups nur auflisten

Alte automatische Backups nur auflisten

Aufruf: `bin/control backup-archive-preview [Optionen]`.

Vorhandene Kurzformen: `backup-archive-preview`.

Feature: backup. Die aktuelle Aktivierung prueft weiterhin Control.

Voraussetzungen laut Registry:
- `lib/control/helpers.sh`
- `playbooks/backup/archive_legacy.yml`

## Parameter und maschinenlesbarer Vertrag

Die Angaben stammen aus den aufgefuehrten Quellen. Fehlende Erklaerungen sind
als solche markiert. Defaults sind Hinweise und werden nicht automatisch gesetzt.
Vertrauliche Werte werden nicht dokumentiert.

```json
{
  "schema_version": 1,
  "kind": "command",
  "ref": "backup-archive-preview",
  "title": "Alte automatische Backups nur auflisten",
  "documented": true,
  "fields": [
    {
      "id": "targets",
      "label": "targets",
      "description": "Inventory-Hosts/-Gruppen als Ansible --limit. Fachliche Pruefungen bleiben aktiv.",
      "type": "array",
      "required": false,
      "sensitive": false,
      "binding": {
        "kind": "option",
        "name": "--limit",
        "separator": ","
      },
      "completion": {
        "source": "inventory.targets"
      }
    },
    {
      "id": "check",
      "label": "check",
      "description": "Ansible-Check-Mode anfordern. Ob Aktionen diesen vollstaendig unterstuetzen, bestimmt das Playbook.",
      "type": "boolean",
      "required": false,
      "sensitive": false,
      "binding": {
        "kind": "flag",
        "name": "--check"
      }
    }
  ],
  "constraints": [],
  "sources": [
    "bin/control.d/backup-archive-preview.json",
    "bin/control.d/backup-archive-preview.sh",
    "lib/control/helpers.sh"
  ],
  "source_hashes": {
    "bin/control.d/backup-archive-preview.json": "1d3034c0c30b14c185d22676c89b2aacdb4aefa4ad63f92b52a45605eab2fff7",
    "bin/control.d/backup-archive-preview.sh": "81a5745856135bf8023825681066b5a6b9c8366658dc680796c8530555fa64a4"
  }
}
```

## Quellen und Pflege

- `bin/control.d/backup-archive-preview.json`
- `bin/control.d/backup-archive-preview.sh`
- `lib/control/helpers.sh`

Diese Datei ist die Pflegequelle fuer Mensch und Add-on. Bei Codeaenderungen
Beschreibung und Quellhashs gemeinsam pruefen. Die Datenbank ist nur Cache.
