# Alte automatische Backups archivieren

Alte automatische Backups archivieren

Aufruf: `bin/control backup-archive-apply [Optionen]`.

Vorhandene Kurzformen: `backup-archive-apply`.

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
  "ref": "backup-archive-apply",
  "title": "Alte automatische Backups archivieren",
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
    "bin/control.d/backup-archive-apply.json",
    "bin/control.d/backup-archive-apply.sh",
    "lib/control/helpers.sh"
  ],
  "source_hashes": {
    "bin/control.d/backup-archive-apply.json": "6c8e9d3ae6be552cd4fc6bad30054c65b367194641f3007ab06f7306bda01aa3",
    "bin/control.d/backup-archive-apply.sh": "12353c3576d0881cf70e4ac0ef466e1342e57377805bc795205eddd3391b0e44",
    "lib/control/helpers.sh": "71898aff95dfffd6873a1e6c4f90e3bdce23c25f6eed0df640dde87afd3bc19e"
  }
}
```

## Quellen und Pflege

- `bin/control.d/backup-archive-apply.json`
- `bin/control.d/backup-archive-apply.sh`
- `lib/control/helpers.sh`

Diese Datei ist die Pflegequelle fuer Mensch und Add-on. Bei Codeaenderungen
Beschreibung und Quellhashs gemeinsam pruefen. Die Datenbank ist nur Cache.
