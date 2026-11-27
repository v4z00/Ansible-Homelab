# Optimize ZFS properties

Optimize ZFS properties

Run: `bin/control zfs-optimize [options]`.

Aliases: `zfs-optimize`.

Feature: proxmox. Control checks availability at runtime.

Registry prerequisites:
- `lib/control/helpers.sh`
- `playbooks/storage/zfs/optimize.yml`

## Parameters

The listed sources define these parameters. Missing documentation is indicated. Defaults are informational. Credentials are omitted.

## Sources and maintenance

- `bin/control.d/zfs-optimize.json`
- `bin/control.d/zfs-optimize.sh`
- `lib/control/helpers.sh`

Maintain this description and its source hashes together when the code changes. The database stores a cache.

<details>
<summary>Deutsch</summary>

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

## Quellen und Pflege

- `bin/control.d/zfs-optimize.json`
- `bin/control.d/zfs-optimize.sh`
- `lib/control/helpers.sh`

Diese Datei ist die Pflegequelle fuer Mensch und Add-on. Bei Codeaenderungen
Beschreibung und Quellhashs gemeinsam pruefen. Die Datenbank ist nur Cache.

</details>

<details>
<summary>Catalog metadata (JSON)</summary>

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
    "bin/control.d/zfs-optimize.sh": "bc7f8bf1fec1bd79fb598dc25e529b7c27b29815b95a207459acb0a7a908b7b0",
    "lib/control/helpers.sh": "71898aff95dfffd6873a1e6c4f90e3bdce23c25f6eed0df640dde87afd3bc19e"
  },
  "i18n": {
    "de": {
      "title": "ZFS-Eigenschaften optimieren",
      "description": "# ZFS-Eigenschaften optimieren\n\nZFS-Eigenschaften optimieren\n\nAufruf: `bin/control zfs-optimize [Optionen]`.\n\nVorhandene Kurzformen: `zfs-optimize`.\n\nFeature: proxmox. Die aktuelle Aktivierung prueft weiterhin Control.\n\nVoraussetzungen laut Registry:\n- `lib/control/helpers.sh`\n- `playbooks/storage/zfs/optimize.yml`\n\n## Parameter und maschinenlesbarer Vertrag\n\nDie Angaben stammen aus den aufgefuehrten Quellen. Fehlende Erklaerungen sind\nals solche markiert. Defaults sind Hinweise und werden nicht automatisch gesetzt.\nVertrauliche Werte werden nicht dokumentiert.\n\n## Quellen und Pflege\n\n- `bin/control.d/zfs-optimize.json`\n- `bin/control.d/zfs-optimize.sh`\n- `lib/control/helpers.sh`\n\nDiese Datei ist die Pflegequelle fuer Mensch und Add-on. Bei Codeaenderungen\nBeschreibung und Quellhashs gemeinsam pruefen. Die Datenbank ist nur Cache.",
      "fields": {
        "targets": {
          "label": "targets",
          "description": "Inventory-Hosts/-Gruppen als Ansible --limit. Fachliche Pruefungen bleiben aktiv."
        },
        "check": {
          "label": "check",
          "description": "Ansible-Check-Mode anfordern. Ob Aktionen diesen vollstaendig unterstuetzen, bestimmt das Playbook."
        }
      }
    },
    "en": {
      "title": "Optimize ZFS properties",
      "description": "# Optimize ZFS properties\n\nOptimize ZFS properties\n\nRun: `bin/control zfs-optimize [options]`.\n\nAliases: `zfs-optimize`.\n\nFeature: proxmox. Control checks availability at runtime.\n\nRegistry prerequisites:\n- `lib/control/helpers.sh`\n- `playbooks/storage/zfs/optimize.yml`\n\n## Parameters\n\nThe listed sources define these parameters. Missing documentation is indicated. Defaults are informational. Credentials are omitted.\n\n## Sources and maintenance\n\n- `bin/control.d/zfs-optimize.json`\n- `bin/control.d/zfs-optimize.sh`\n- `lib/control/helpers.sh`\n\nMaintain this description and its source hashes together when the code changes. The database stores a cache.",
      "fields": {
        "targets": {
          "label": "Target hosts or groups",
          "description": "Limit Ansible to the selected inventory hosts or groups. The playbook still applies its own checks."
        },
        "check": {
          "label": "Check mode",
          "description": "Request Ansible check mode. Coverage depends on the playbook."
        }
      }
    }
  }
}
```

</details>
