# Check outbound HTTP connectivity

In Homelab, the OpenWrt check also runs when the controller has the `openwrt-health` command enabled.

Check outbound HTTP connectivity

Run: `bin/control wan-check [options]`.

Aliases: `wan-check`.

Available without a separate feature switch. Control checks availability at runtime.

Registry prerequisites:
- `lib/control/helpers.sh`
- `playbooks/maintenance/wan_check.yaml`

## Parameters

The listed sources define these parameters. Missing documentation is indicated. Defaults are informational. Credentials are omitted.

## Sources and maintenance

- `bin/control.d/wan-check.json`
- `bin/control.d/wan-check.sh`
- `lib/control/helpers.sh`

Maintain this description and its source hashes together when the code changes. The database stores a cache.

<details>
<summary>Deutsch</summary>

# Externe HTTP-Erreichbarkeit pruefen

Im Homelab läuft zusätzlich die OpenWrt-Prüfung, sobald der Befehl `openwrt-health` im Controller aktiviert ist.

Externe HTTP-Erreichbarkeit pruefen

Aufruf: `bin/control wan-check [Optionen]`.

Vorhandene Kurzformen: `wan-check`.

Feature: kein zusaetzlicher Feature-Schalter. Die aktuelle Aktivierung prueft weiterhin Control.

Voraussetzungen laut Registry:
- `lib/control/helpers.sh`
- `playbooks/maintenance/wan_check.yaml`

## Parameter und maschinenlesbarer Vertrag

Die Angaben stammen aus den aufgefuehrten Quellen. Fehlende Erklaerungen sind
als solche markiert. Defaults sind Hinweise und werden nicht automatisch gesetzt.
Vertrauliche Werte werden nicht dokumentiert.

## Quellen und Pflege

- `bin/control.d/wan-check.json`
- `bin/control.d/wan-check.sh`
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
  "ref": "wan-check",
  "title": "Externe HTTP-Erreichbarkeit pruefen",
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
    "bin/control.d/wan-check.json",
    "bin/control.d/wan-check.sh",
    "lib/control/helpers.sh"
  ],
  "source_hashes": {
    "bin/control.d/wan-check.json": "1b4010d9d0b305495f87a31fc0125f94738927b850db646825acc7e07f94b443",
    "bin/control.d/wan-check.sh": "9472479a83968191564215494fdde4fce3530f0a41e918c61e46b37bf0ba411e",
    "lib/control/helpers.sh": "71898aff95dfffd6873a1e6c4f90e3bdce23c25f6eed0df640dde87afd3bc19e"
  },
  "i18n": {
    "de": {
      "title": "Externe HTTP-Erreichbarkeit pruefen",
      "description": "# Externe HTTP-Erreichbarkeit pruefen\n\nIm Homelab läuft zusätzlich die OpenWrt-Prüfung, sobald der Befehl `openwrt-health` im Controller aktiviert ist.\n\nExterne HTTP-Erreichbarkeit pruefen\n\nAufruf: `bin/control wan-check [Optionen]`.\n\nVorhandene Kurzformen: `wan-check`.\n\nFeature: kein zusaetzlicher Feature-Schalter. Die aktuelle Aktivierung prueft weiterhin Control.\n\nVoraussetzungen laut Registry:\n- `lib/control/helpers.sh`\n- `playbooks/maintenance/wan_check.yaml`\n\n## Parameter und maschinenlesbarer Vertrag\n\nDie Angaben stammen aus den aufgefuehrten Quellen. Fehlende Erklaerungen sind\nals solche markiert. Defaults sind Hinweise und werden nicht automatisch gesetzt.\nVertrauliche Werte werden nicht dokumentiert.\n\n## Quellen und Pflege\n\n- `bin/control.d/wan-check.json`\n- `bin/control.d/wan-check.sh`\n- `lib/control/helpers.sh`\n\nDiese Datei ist die Pflegequelle fuer Mensch und Add-on. Bei Codeaenderungen\nBeschreibung und Quellhashs gemeinsam pruefen. Die Datenbank ist nur Cache.",
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
      "title": "Check outbound HTTP connectivity",
      "description": "# Check outbound HTTP connectivity\n\nIn Homelab, the OpenWrt check also runs when the controller has the `openwrt-health` command enabled.\n\nCheck outbound HTTP connectivity\n\nRun: `bin/control wan-check [options]`.\n\nAliases: `wan-check`.\n\nAvailable without a separate feature switch. Control checks availability at runtime.\n\nRegistry prerequisites:\n- `lib/control/helpers.sh`\n- `playbooks/maintenance/wan_check.yaml`\n\n## Parameters\n\nThe listed sources define these parameters. Missing documentation is indicated. Defaults are informational. Credentials are omitted.\n\n## Sources and maintenance\n\n- `bin/control.d/wan-check.json`\n- `bin/control.d/wan-check.sh`\n- `lib/control/helpers.sh`\n\nMaintain this description and its source hashes together when the code changes. The database stores a cache.",
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
