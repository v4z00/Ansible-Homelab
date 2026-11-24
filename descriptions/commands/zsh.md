# Zsh Command Center ausrollen

Zsh Command Center ausrollen

Aufruf: `bin/control zsh [Optionen]`.

Vorhandene Kurzformen: `zsh-deploy`.

Feature: zsh. Die aktuelle Aktivierung prueft weiterhin Control.

Voraussetzungen laut Registry:
- `lib/control/helpers.sh`
- `playbooks/zsh.yml`

## Parameter und maschinenlesbarer Vertrag

Die Angaben stammen aus den aufgefuehrten Quellen. Fehlende Erklaerungen sind
als solche markiert. Defaults sind Hinweise und werden nicht automatisch gesetzt.
Vertrauliche Werte werden nicht dokumentiert.

```json
{
  "schema_version": 1,
  "kind": "command",
  "ref": "zsh",
  "title": "Zsh Command Center ausrollen",
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
    "bin/control.d/zsh.json",
    "bin/control.d/zsh.sh",
    "lib/control/helpers.sh"
  ],
  "source_hashes": {
    "bin/control.d/zsh.json": "62f4e8db8a03050550f1669805c8f2af3c43b7cc19f9511de95bf36b9ce2e21b",
    "bin/control.d/zsh.sh": "9b3981271ee1b03e6c5ce55c4e6c93635311541772282c2934f239c984edcada"
  }
}
```

## Quellen und Pflege

- `bin/control.d/zsh.json`
- `bin/control.d/zsh.sh`
- `lib/control/helpers.sh`

Diese Datei ist die Pflegequelle fuer Mensch und Add-on. Bei Codeaenderungen
Beschreibung und Quellhashs gemeinsam pruefen. Die Datenbank ist nur Cache.
