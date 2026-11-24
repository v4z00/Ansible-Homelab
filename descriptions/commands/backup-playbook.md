# Alle Backups in einem Ansible-Lauf starten

Alle Backups in einem Ansible-Lauf starten

Aufruf: `bin/control backup-playbook [Optionen]`.

Vorhandene Kurzformen: `backup-playbook`.

Feature: backup. Die aktuelle Aktivierung prueft weiterhin Control.

Voraussetzungen laut Registry:
- `lib/control/helpers.sh`
- `playbooks/backup/backup_all.yml`

## Parameter und maschinenlesbarer Vertrag

Die Angaben stammen aus den aufgefuehrten Quellen. Fehlende Erklaerungen sind
als solche markiert. Defaults sind Hinweise und werden nicht automatisch gesetzt.
Vertrauliche Werte werden nicht dokumentiert.

```json
{
  "schema_version": 1,
  "kind": "command",
  "ref": "backup-playbook",
  "title": "Alle Backups in einem Ansible-Lauf starten",
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
    "bin/control.d/backup-playbook.json",
    "bin/control.d/backup-playbook.sh",
    "lib/control/helpers.sh"
  ],
  "source_hashes": {
    "bin/control.d/backup-playbook.json": "3ba285b2b48d8ffc03ba6bd04d6271d2570623ee1ff2bc78eaee411f13cda78f",
    "bin/control.d/backup-playbook.sh": "3501259b8f7411c316dd2520425a61e3ffdf32f0736f4793a9b8e43ccb5dbe09"
  }
}
```

## Quellen und Pflege

- `bin/control.d/backup-playbook.json`
- `bin/control.d/backup-playbook.sh`
- `lib/control/helpers.sh`

Diese Datei ist die Pflegequelle fuer Mensch und Add-on. Bei Codeaenderungen
Beschreibung und Quellhashs gemeinsam pruefen. Die Datenbank ist nur Cache.
