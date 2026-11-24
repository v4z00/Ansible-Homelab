# Zentrale Cronjobs auf dem Controller einrichten

Zentrale Cronjobs auf dem Controller einrichten

Aufruf: `bin/control schedules [Optionen]`.

Vorhandene Kurzformen: `schedules`.

Feature: schedules. Die aktuelle Aktivierung prueft weiterhin Control.

Voraussetzungen laut Registry:
- `lib/control/helpers.sh`
- `playbooks/maintenance/manage_controller_schedules.yml`

## Parameter und maschinenlesbarer Vertrag

Die Angaben stammen aus den aufgefuehrten Quellen. Fehlende Erklaerungen sind
als solche markiert. Defaults sind Hinweise und werden nicht automatisch gesetzt.
Vertrauliche Werte werden nicht dokumentiert.

```json
{
  "schema_version": 1,
  "kind": "command",
  "ref": "schedules",
  "title": "Zentrale Cronjobs auf dem Controller einrichten",
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
    "bin/control.d/schedules.json",
    "bin/control.d/schedules.sh",
    "lib/control/helpers.sh"
  ],
  "source_hashes": {
    "bin/control.d/schedules.json": "9be2494da84886d4b219f8f144dcc088ba270d29f16f13d87314286f706841f0",
    "bin/control.d/schedules.sh": "fd2f75482a85192639ed152ef402af36bc2258b439f449c8d603b0ba011f666b"
  }
}
```

## Quellen und Pflege

- `bin/control.d/schedules.json`
- `bin/control.d/schedules.sh`
- `lib/control/helpers.sh`

Diese Datei ist die Pflegequelle fuer Mensch und Add-on. Bei Codeaenderungen
Beschreibung und Quellhashs gemeinsam pruefen. Die Datenbank ist nur Cache.
