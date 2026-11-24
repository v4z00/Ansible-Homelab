# ZFS-Eigenschaften optimieren

ZFS-Eigenschaften optimieren

Aufruf: `bin/control zfs-optimize [Optionen]`.

Vorhandene Kurzformen: `zfs-optimize`.

Feature: proxmox. Die aktuelle Aktivierung prueft weiterhin Control.

Voraussetzungen laut Registry:
- `lib/control/helpers.sh`
- `playbooks/storage/zfs/optimize.yml`

## Parameter und maschinenlesbarer Vertrag

Die Angaben stammen aus den aufgefuehrten Quellen. Fehlende Erklaerungen sind
als solche markiert. Defaults sind Hinweise und werden nicht automatisch gesetzt.
Vertrauliche Werte werden nicht dokumentiert.

```json
{
  "schema_version": 1,
  "kind": "command",
  "ref": "zfs-optimize",
  "title": "ZFS-Eigenschaften optimieren",
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
    "bin/control.d/zfs-optimize.json",
    "bin/control.d/zfs-optimize.sh",
    "lib/control/helpers.sh"
  ],
  "source_hashes": {
    "bin/control.d/zfs-optimize.json": "398c2e116bc0aee403db563b2632cdf64279b2b21199a88ce755884afb89f5ba",
    "bin/control.d/zfs-optimize.sh": "bc7f8bf1fec1bd79fb598dc25e529b7c27b29815b95a207459acb0a7a908b7b0"
  }
}
```

## Quellen und Pflege

- `bin/control.d/zfs-optimize.json`
- `bin/control.d/zfs-optimize.sh`
- `lib/control/helpers.sh`

Diese Datei ist die Pflegequelle fuer Mensch und Add-on. Bei Codeaenderungen
Beschreibung und Quellhashs gemeinsam pruefen. Die Datenbank ist nur Cache.
