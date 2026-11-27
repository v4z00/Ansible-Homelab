# Compare OpenWrt package lists

Compare OpenWrt package lists

Run: `bin/control openwrt-package-diff [options]`.

Aliases: `wifi-diff-pkgs`, `openwrt-package-diff`.

Feature: openwrt. Control checks availability at runtime.

Registry prerequisites:
- `lib/control/helpers.sh`
- `playbooks/network/openwrt/compare_packages.yml`

## Parameters

The listed sources define these parameters. Missing documentation is indicated. Defaults are informational. Credentials are omitted.

## Sources and maintenance

- `bin/control.d/openwrt-package-diff.json`
- `bin/control.d/openwrt-package-diff.sh`
- `lib/control/helpers.sh`

Maintain this description and its source hashes together when the code changes. The database stores a cache.

<details>
<summary>Deutsch</summary>

# OpenWrt-Paketlisten vergleichen

OpenWrt-Paketlisten vergleichen

Aufruf: `bin/control openwrt-package-diff [Optionen]`.

Vorhandene Kurzformen: `wifi-diff-pkgs`, `openwrt-package-diff`.

Feature: openwrt. Die aktuelle Aktivierung prueft weiterhin Control.

Voraussetzungen laut Registry:
- `lib/control/helpers.sh`
- `playbooks/network/openwrt/compare_packages.yml`

## Parameter und maschinenlesbarer Vertrag

Die Angaben stammen aus den aufgefuehrten Quellen. Fehlende Erklaerungen sind
als solche markiert. Defaults sind Hinweise und werden nicht automatisch gesetzt.
Vertrauliche Werte werden nicht dokumentiert.

## Quellen und Pflege

- `bin/control.d/openwrt-package-diff.json`
- `bin/control.d/openwrt-package-diff.sh`
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
  "ref": "openwrt-package-diff",
  "title": "OpenWrt-Paketlisten vergleichen",
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
    "bin/control.d/openwrt-package-diff.json",
    "bin/control.d/openwrt-package-diff.sh",
    "lib/control/helpers.sh"
  ],
  "source_hashes": {
    "bin/control.d/openwrt-package-diff.json": "dd55300de032568468f7f0112606ae6854fdabcb69e8bc4fa963bbbe3a685dc9",
    "bin/control.d/openwrt-package-diff.sh": "e2f9482eac224eaa7759050b0729d7ed8b3e14ad18845996f48ec1e7452254bc",
    "lib/control/helpers.sh": "71898aff95dfffd6873a1e6c4f90e3bdce23c25f6eed0df640dde87afd3bc19e"
  },
  "i18n": {
    "de": {
      "title": "OpenWrt-Paketlisten vergleichen",
      "description": "# OpenWrt-Paketlisten vergleichen\n\nOpenWrt-Paketlisten vergleichen\n\nAufruf: `bin/control openwrt-package-diff [Optionen]`.\n\nVorhandene Kurzformen: `wifi-diff-pkgs`, `openwrt-package-diff`.\n\nFeature: openwrt. Die aktuelle Aktivierung prueft weiterhin Control.\n\nVoraussetzungen laut Registry:\n- `lib/control/helpers.sh`\n- `playbooks/network/openwrt/compare_packages.yml`\n\n## Parameter und maschinenlesbarer Vertrag\n\nDie Angaben stammen aus den aufgefuehrten Quellen. Fehlende Erklaerungen sind\nals solche markiert. Defaults sind Hinweise und werden nicht automatisch gesetzt.\nVertrauliche Werte werden nicht dokumentiert.\n\n## Quellen und Pflege\n\n- `bin/control.d/openwrt-package-diff.json`\n- `bin/control.d/openwrt-package-diff.sh`\n- `lib/control/helpers.sh`\n\nDiese Datei ist die Pflegequelle fuer Mensch und Add-on. Bei Codeaenderungen\nBeschreibung und Quellhashs gemeinsam pruefen. Die Datenbank ist nur Cache.",
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
      "title": "Compare OpenWrt package lists",
      "description": "# Compare OpenWrt package lists\n\nCompare OpenWrt package lists\n\nRun: `bin/control openwrt-package-diff [options]`.\n\nAliases: `wifi-diff-pkgs`, `openwrt-package-diff`.\n\nFeature: openwrt. Control checks availability at runtime.\n\nRegistry prerequisites:\n- `lib/control/helpers.sh`\n- `playbooks/network/openwrt/compare_packages.yml`\n\n## Parameters\n\nThe listed sources define these parameters. Missing documentation is indicated. Defaults are informational. Credentials are omitted.\n\n## Sources and maintenance\n\n- `bin/control.d/openwrt-package-diff.json`\n- `bin/control.d/openwrt-package-diff.sh`\n- `lib/control/helpers.sh`\n\nMaintain this description and its source hashes together when the code changes. The database stores a cache.",
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
