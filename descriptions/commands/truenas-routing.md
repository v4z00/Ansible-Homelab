# Configure TrueNAS routing

Configure TrueNAS routing

Run: `bin/control truenas-routing [options]`.

Aliases: `route-truenas`, `truenas-routing`.

Feature: truenas. Control checks availability at runtime.

Registry prerequisites:
- `lib/control/helpers.sh`
- `playbooks/storage/truenas/configure_routing.yml`

## Parameters

The listed sources define these parameters. Missing documentation is indicated. Defaults are informational. Credentials are omitted.

## Sources and maintenance

- `bin/control.d/truenas-routing.json`
- `bin/control.d/truenas-routing.sh`
- `lib/control/helpers.sh`

Maintain this description and its source hashes together when the code changes. The database stores a cache.

<details>
<summary>Deutsch</summary>

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

## Quellen und Pflege

- `bin/control.d/truenas-routing.json`
- `bin/control.d/truenas-routing.sh`
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
  },
  "i18n": {
    "de": {
      "title": "TrueNAS-Routing setzen",
      "description": "# TrueNAS-Routing setzen\n\nTrueNAS-Routing setzen\n\nAufruf: `bin/control truenas-routing [Optionen]`.\n\nVorhandene Kurzformen: `route-truenas`, `truenas-routing`.\n\nFeature: truenas. Die aktuelle Aktivierung prueft weiterhin Control.\n\nVoraussetzungen laut Registry:\n- `lib/control/helpers.sh`\n- `playbooks/storage/truenas/configure_routing.yml`\n\n## Parameter und maschinenlesbarer Vertrag\n\nDie Angaben stammen aus den aufgefuehrten Quellen. Fehlende Erklaerungen sind\nals solche markiert. Defaults sind Hinweise und werden nicht automatisch gesetzt.\nVertrauliche Werte werden nicht dokumentiert.\n\n## Quellen und Pflege\n\n- `bin/control.d/truenas-routing.json`\n- `bin/control.d/truenas-routing.sh`\n- `lib/control/helpers.sh`\n\nDiese Datei ist die Pflegequelle fuer Mensch und Add-on. Bei Codeaenderungen\nBeschreibung und Quellhashs gemeinsam pruefen. Die Datenbank ist nur Cache.",
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
      "title": "Configure TrueNAS routing",
      "description": "# Configure TrueNAS routing\n\nConfigure TrueNAS routing\n\nRun: `bin/control truenas-routing [options]`.\n\nAliases: `route-truenas`, `truenas-routing`.\n\nFeature: truenas. Control checks availability at runtime.\n\nRegistry prerequisites:\n- `lib/control/helpers.sh`\n- `playbooks/storage/truenas/configure_routing.yml`\n\n## Parameters\n\nThe listed sources define these parameters. Missing documentation is indicated. Defaults are informational. Credentials are omitted.\n\n## Sources and maintenance\n\n- `bin/control.d/truenas-routing.json`\n- `bin/control.d/truenas-routing.sh`\n- `lib/control/helpers.sh`\n\nMaintain this description and its source hashes together when the code changes. The database stores a cache.",
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
