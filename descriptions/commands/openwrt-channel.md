# WLAN-Kanaele und Auslastung anzeigen

WLAN-Kanaele und Auslastung anzeigen

Aufruf: `bin/control openwrt-channel [Optionen]`.

Vorhandene Kurzformen: `wifi-wlan-channel`, `openwrt-channel`.

Feature: openwrt. Die aktuelle Aktivierung prueft weiterhin Control.

Voraussetzungen laut Registry:
- `lib/control/helpers.sh`
- `playbooks/network/openwrt/openwrt_get_wlan-channel.yml`

## Parameter und maschinenlesbarer Vertrag

Die Angaben stammen aus den aufgefuehrten Quellen. Fehlende Erklaerungen sind
als solche markiert. Defaults sind Hinweise und werden nicht automatisch gesetzt.
Vertrauliche Werte werden nicht dokumentiert.

```json
{
  "schema_version": 1,
  "kind": "command",
  "ref": "openwrt-channel",
  "title": "WLAN-Kanaele und Auslastung anzeigen",
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
    "bin/control.d/openwrt-channel.json",
    "bin/control.d/openwrt-channel.sh",
    "lib/control/helpers.sh"
  ],
  "source_hashes": {
    "bin/control.d/openwrt-channel.json": "017640728e10559d235d401e623be20e73376b3be238e1ed14be145b6b3d96dc",
    "bin/control.d/openwrt-channel.sh": "63663d2e81499b25870ffcaa8b938518455f1525520c81b0a1358e4f7265c459",
    "lib/control/helpers.sh": "71898aff95dfffd6873a1e6c4f90e3bdce23c25f6eed0df640dde87afd3bc19e"
  },
  "i18n": {
    "de": {
      "title": "WLAN-Kanaele und Auslastung anzeigen",
      "description": "# WLAN-Kanaele und Auslastung anzeigen\n\nWLAN-Kanaele und Auslastung anzeigen\n\nAufruf: `bin/control openwrt-channel [Optionen]`.\n\nVorhandene Kurzformen: `wifi-wlan-channel`, `openwrt-channel`.\n\nFeature: openwrt. Die aktuelle Aktivierung prueft weiterhin Control.\n\nVoraussetzungen laut Registry:\n- `lib/control/helpers.sh`\n- `playbooks/network/openwrt/openwrt_get_wlan-channel.yml`\n\n## Parameter und maschinenlesbarer Vertrag\n\nDie Angaben stammen aus den aufgefuehrten Quellen. Fehlende Erklaerungen sind\nals solche markiert. Defaults sind Hinweise und werden nicht automatisch gesetzt.\nVertrauliche Werte werden nicht dokumentiert.\n\n## Quellen und Pflege\n\n- `bin/control.d/openwrt-channel.json`\n- `bin/control.d/openwrt-channel.sh`\n- `lib/control/helpers.sh`\n\nDiese Datei ist die Pflegequelle fuer Mensch und Add-on. Bei Codeaenderungen\nBeschreibung und Quellhashs gemeinsam pruefen. Die Datenbank ist nur Cache.",
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
      "title": "Show wireless channels and utilization",
      "description": "# Show wireless channels and utilization\n\nShow wireless channels and utilization\n\nRun: `bin/control openwrt-channel [options]`.\n\nAliases: `wifi-wlan-channel`, `openwrt-channel`.\n\nFeature: openwrt. Control checks availability at runtime.\n\nRegistry prerequisites:\n- `lib/control/helpers.sh`\n- `playbooks/network/openwrt/openwrt_get_wlan-channel.yml`\n\n## Parameters\n\nThe listed sources define these parameters. Missing documentation is indicated. Defaults are informational. Credentials are omitted.\n\n## Sources and maintenance\n\n- `bin/control.d/openwrt-channel.json`\n- `bin/control.d/openwrt-channel.sh`\n- `lib/control/helpers.sh`\n\nMaintain this description and its source hashes together when the code changes. The database stores a cache.",
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

- `bin/control.d/openwrt-channel.json`
- `bin/control.d/openwrt-channel.sh`
- `lib/control/helpers.sh`

Diese Datei ist die Pflegequelle fuer Mensch und Add-on. Bei Codeaenderungen
Beschreibung und Quellhashs gemeinsam pruefen. Die Datenbank ist nur Cache.
