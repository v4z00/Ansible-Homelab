# OpenWrt-Healthcheck anzeigen

OpenWrt-Healthcheck anzeigen

Aufruf: `bin/control openwrt-health [Optionen]`.

Vorhandene Kurzformen: `wifi-health`, `openwrt-health`.

Feature: openwrt. Die aktuelle Aktivierung prueft weiterhin Control.

Voraussetzungen laut Registry:
- `lib/control/helpers.sh`
- `playbooks/network/openwrt/openwrt_health_check.yml`

## Parameter und maschinenlesbarer Vertrag

Die Angaben stammen aus den aufgefuehrten Quellen. Fehlende Erklaerungen sind
als solche markiert. Defaults sind Hinweise und werden nicht automatisch gesetzt.
Vertrauliche Werte werden nicht dokumentiert.

```json
{
  "schema_version": 1,
  "kind": "command",
  "ref": "openwrt-health",
  "title": "OpenWrt-Healthcheck anzeigen",
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
    "bin/control.d/openwrt-health.json",
    "bin/control.d/openwrt-health.sh",
    "lib/control/helpers.sh"
  ],
  "source_hashes": {
    "bin/control.d/openwrt-health.json": "01a65020071b841209762bfa9b0e4f5c8adf3b72c6acd247d300bbaad45e7ca1",
    "bin/control.d/openwrt-health.sh": "f646fb2c5877974b30a0c0710c298fae89b7188bb0300d0f2ca11bdda84c3f28",
    "lib/control/helpers.sh": "71898aff95dfffd6873a1e6c4f90e3bdce23c25f6eed0df640dde87afd3bc19e"
  },
  "i18n": {
    "de": {
      "title": "OpenWrt-Healthcheck anzeigen",
      "description": "# OpenWrt-Healthcheck anzeigen\n\nOpenWrt-Healthcheck anzeigen\n\nAufruf: `bin/control openwrt-health [Optionen]`.\n\nVorhandene Kurzformen: `wifi-health`, `openwrt-health`.\n\nFeature: openwrt. Die aktuelle Aktivierung prueft weiterhin Control.\n\nVoraussetzungen laut Registry:\n- `lib/control/helpers.sh`\n- `playbooks/network/openwrt/openwrt_health_check.yml`\n\n## Parameter und maschinenlesbarer Vertrag\n\nDie Angaben stammen aus den aufgefuehrten Quellen. Fehlende Erklaerungen sind\nals solche markiert. Defaults sind Hinweise und werden nicht automatisch gesetzt.\nVertrauliche Werte werden nicht dokumentiert.\n\n## Quellen und Pflege\n\n- `bin/control.d/openwrt-health.json`\n- `bin/control.d/openwrt-health.sh`\n- `lib/control/helpers.sh`\n\nDiese Datei ist die Pflegequelle fuer Mensch und Add-on. Bei Codeaenderungen\nBeschreibung und Quellhashs gemeinsam pruefen. Die Datenbank ist nur Cache.",
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
      "title": "Show OpenWrt health checks",
      "description": "# Show OpenWrt health checks\n\nShow OpenWrt health checks\n\nRun: `bin/control openwrt-health [options]`.\n\nAliases: `wifi-health`, `openwrt-health`.\n\nFeature: openwrt. Control checks availability at runtime.\n\nRegistry prerequisites:\n- `lib/control/helpers.sh`\n- `playbooks/network/openwrt/openwrt_health_check.yml`\n\n## Parameters\n\nThe listed sources define these parameters. Missing documentation is indicated. Defaults are informational. Credentials are omitted.\n\n## Sources and maintenance\n\n- `bin/control.d/openwrt-health.json`\n- `bin/control.d/openwrt-health.sh`\n- `lib/control/helpers.sh`\n\nMaintain this description and its source hashes together when the code changes. The database stores a cache.",
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

## Quellen und Pflege

- `bin/control.d/openwrt-health.json`
- `bin/control.d/openwrt-health.sh`
- `lib/control/helpers.sh`

Diese Datei ist die Pflegequelle fuer Mensch und Add-on. Bei Codeaenderungen
Beschreibung und Quellhashs gemeinsam pruefen. Die Datenbank ist nur Cache.
