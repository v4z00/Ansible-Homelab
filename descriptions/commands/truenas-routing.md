# TrueNAS-Routing setzen

TrueNAS-Routing setzen

Aufruf: `bin/control truenas-routing [Optionen]`.

Vorhandene Kurzformen: `route-truenas`, `truenas-routing`.

Feature: truenas. Die aktuelle Aktivierung prueft weiterhin Control.

Voraussetzungen laut Registry:
- `lib/control/helpers.sh`
- `playbooks/storage/truenas/configure_routing.yml`

## Parameter und maschinenlesbarer Vertrag

Die Angaben stammen aus den aufgefuehrten Quellen. Fehlende Erklaerungen sind
als solche markiert. Defaults sind Hinweise und werden nicht automatisch gesetzt.
Vertrauliche Werte werden nicht dokumentiert.

```json
{
  "schema_version": 1,
  "kind": "command",
  "ref": "truenas-routing",
  "title": "TrueNAS-Routing setzen",
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
    "bin/control.d/truenas-routing.json",
    "bin/control.d/truenas-routing.sh",
    "lib/control/helpers.sh"
  ],
  "source_hashes": {
    "bin/control.d/truenas-routing.json": "ade730ad4d7f758ebf8f6fd0f757352c0f059085b2abca4ebe746dd85523852a",
    "bin/control.d/truenas-routing.sh": "452bd0a4b3053c63ce86a98c0d76a01e7299a8370fad77257866c9c209eedd97",
    "lib/control/helpers.sh": "71898aff95dfffd6873a1e6c4f90e3bdce23c25f6eed0df640dde87afd3bc19e"
  }
}
```

## Quellen und Pflege

- `bin/control.d/truenas-routing.json`
- `bin/control.d/truenas-routing.sh`
- `lib/control/helpers.sh`

Diese Datei ist die Pflegequelle fuer Mensch und Add-on. Bei Codeaenderungen
Beschreibung und Quellhashs gemeinsam pruefen. Die Datenbank ist nur Cache.
