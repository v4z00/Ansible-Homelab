# Disable the OpenWrt web interface

Disable the OpenWrt web interface

Run: `bin/control openwrt-gui-off [options]`.

Aliases: `wifi-gui-off`, `openwrt-gui-off`.

Feature: openwrt. Control checks availability at runtime.

Registry prerequisites:
- `lib/control/helpers.sh`
- `playbooks/network/openwrt/manage_openwrt_gui.yml`

## Parameters

The listed sources define these parameters. Missing documentation is indicated. Defaults are informational. Credentials are omitted.

## Sources and maintenance

- `bin/control.d/openwrt-gui-off.json`
- `bin/control.d/openwrt-gui-off.sh`
- `lib/control/helpers.sh`

Maintain this description and its source hashes together when the code changes. The database stores a cache.

<details>
<summary>Deutsch</summary>

# OpenWrt-GUI ausschalten

OpenWrt-GUI ausschalten

Aufruf: `bin/control openwrt-gui-off [Optionen]`.

Vorhandene Kurzformen: `wifi-gui-off`, `openwrt-gui-off`.

Feature: openwrt. Die aktuelle Aktivierung prueft weiterhin Control.

Voraussetzungen laut Registry:
- `lib/control/helpers.sh`
- `playbooks/network/openwrt/manage_openwrt_gui.yml`

## Parameter und maschinenlesbarer Vertrag

Die Angaben stammen aus den aufgefuehrten Quellen. Fehlende Erklaerungen sind
als solche markiert. Defaults sind Hinweise und werden nicht automatisch gesetzt.
Vertrauliche Werte werden nicht dokumentiert.

## Quellen und Pflege

- `bin/control.d/openwrt-gui-off.json`
- `bin/control.d/openwrt-gui-off.sh`
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
  "ref": "openwrt-gui-off",
  "title": "OpenWrt-GUI ausschalten",
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
    "bin/control.d/openwrt-gui-off.json",
    "bin/control.d/openwrt-gui-off.sh",
    "lib/control/helpers.sh"
  ],
  "source_hashes": {
    "bin/control.d/openwrt-gui-off.json": "075ca9a677aa24b57972175600308cedd1b576175fa202a13daa01b08a64d5a8",
    "bin/control.d/openwrt-gui-off.sh": "47a13a89a5a5027fcb735a82aa001070e80408f16d28cc382e7887971df85b64",
    "lib/control/helpers.sh": "71898aff95dfffd6873a1e6c4f90e3bdce23c25f6eed0df640dde87afd3bc19e"
  },
  "i18n": {
    "de": {
      "title": "OpenWrt-GUI ausschalten",
      "description": "# OpenWrt-GUI ausschalten\n\nOpenWrt-GUI ausschalten\n\nAufruf: `bin/control openwrt-gui-off [Optionen]`.\n\nVorhandene Kurzformen: `wifi-gui-off`, `openwrt-gui-off`.\n\nFeature: openwrt. Die aktuelle Aktivierung prueft weiterhin Control.\n\nVoraussetzungen laut Registry:\n- `lib/control/helpers.sh`\n- `playbooks/network/openwrt/manage_openwrt_gui.yml`\n\n## Parameter und maschinenlesbarer Vertrag\n\nDie Angaben stammen aus den aufgefuehrten Quellen. Fehlende Erklaerungen sind\nals solche markiert. Defaults sind Hinweise und werden nicht automatisch gesetzt.\nVertrauliche Werte werden nicht dokumentiert.\n\n## Quellen und Pflege\n\n- `bin/control.d/openwrt-gui-off.json`\n- `bin/control.d/openwrt-gui-off.sh`\n- `lib/control/helpers.sh`\n\nDiese Datei ist die Pflegequelle fuer Mensch und Add-on. Bei Codeaenderungen\nBeschreibung und Quellhashs gemeinsam pruefen. Die Datenbank ist nur Cache.",
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
      "title": "Disable the OpenWrt web interface",
      "description": "# Disable the OpenWrt web interface\n\nDisable the OpenWrt web interface\n\nRun: `bin/control openwrt-gui-off [options]`.\n\nAliases: `wifi-gui-off`, `openwrt-gui-off`.\n\nFeature: openwrt. Control checks availability at runtime.\n\nRegistry prerequisites:\n- `lib/control/helpers.sh`\n- `playbooks/network/openwrt/manage_openwrt_gui.yml`\n\n## Parameters\n\nThe listed sources define these parameters. Missing documentation is indicated. Defaults are informational. Credentials are omitted.\n\n## Sources and maintenance\n\n- `bin/control.d/openwrt-gui-off.json`\n- `bin/control.d/openwrt-gui-off.sh`\n- `lib/control/helpers.sh`\n\nMaintain this description and its source hashes together when the code changes. The database stores a cache.",
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
