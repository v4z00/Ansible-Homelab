# DNS-Aufloesung pruefen

Im Homelab läuft zusätzlich die OpenWrt-Prüfung, sobald der Befehl `openwrt-health` im Controller aktiviert ist.

DNS-Aufloesung pruefen

Aufruf: `bin/control dns-check [Optionen]`.

Vorhandene Kurzformen: `check-dns`, `dns-check`.

Feature: kein zusaetzlicher Feature-Schalter. Die aktuelle Aktivierung prueft weiterhin Control.

Voraussetzungen laut Registry:
- `lib/control/helpers.sh`
- `playbooks/maintenance/check-dns.yml`

## Parameter und maschinenlesbarer Vertrag

Die Angaben stammen aus den aufgefuehrten Quellen. Fehlende Erklaerungen sind
als solche markiert. Defaults sind Hinweise und werden nicht automatisch gesetzt.
Vertrauliche Werte werden nicht dokumentiert.

```json
{
  "schema_version": 1,
  "kind": "command",
  "ref": "dns-check",
  "title": "DNS-Aufloesung pruefen",
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
    "bin/control.d/dns-check.json",
    "bin/control.d/dns-check.sh",
    "lib/control/helpers.sh"
  ],
  "source_hashes": {
    "bin/control.d/dns-check.json": "6ed6411af62eb4cfa6700a8cf9e0f5faa1077e14c1033dd4532b5a9bbf3116fc",
    "bin/control.d/dns-check.sh": "c7bd81c741577316f803243529b6b4d1e6b9b5092005ffc88f3703491af41ad9",
    "lib/control/helpers.sh": "71898aff95dfffd6873a1e6c4f90e3bdce23c25f6eed0df640dde87afd3bc19e"
  },
  "i18n": {
    "de": {
      "title": "DNS-Aufloesung pruefen",
      "description": "# DNS-Aufloesung pruefen\n\nIm Homelab läuft zusätzlich die OpenWrt-Prüfung, sobald der Befehl `openwrt-health` im Controller aktiviert ist.\n\nDNS-Aufloesung pruefen\n\nAufruf: `bin/control dns-check [Optionen]`.\n\nVorhandene Kurzformen: `check-dns`, `dns-check`.\n\nFeature: kein zusaetzlicher Feature-Schalter. Die aktuelle Aktivierung prueft weiterhin Control.\n\nVoraussetzungen laut Registry:\n- `lib/control/helpers.sh`\n- `playbooks/maintenance/check-dns.yml`\n\n## Parameter und maschinenlesbarer Vertrag\n\nDie Angaben stammen aus den aufgefuehrten Quellen. Fehlende Erklaerungen sind\nals solche markiert. Defaults sind Hinweise und werden nicht automatisch gesetzt.\nVertrauliche Werte werden nicht dokumentiert.\n\n## Quellen und Pflege\n\n- `bin/control.d/dns-check.json`\n- `bin/control.d/dns-check.sh`\n- `lib/control/helpers.sh`\n\nDiese Datei ist die Pflegequelle fuer Mensch und Add-on. Bei Codeaenderungen\nBeschreibung und Quellhashs gemeinsam pruefen. Die Datenbank ist nur Cache.",
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
      "title": "Check DNS resolution",
      "description": "# Check DNS resolution\n\nIn Homelab, the OpenWrt check also runs when the controller has the `openwrt-health` command enabled.\n\nCheck DNS resolution\n\nRun: `bin/control dns-check [options]`.\n\nAliases: `check-dns`, `dns-check`.\n\nAvailable without a separate feature switch. Control checks availability at runtime.\n\nRegistry prerequisites:\n- `lib/control/helpers.sh`\n- `playbooks/maintenance/check-dns.yml`\n\n## Parameters\n\nThe listed sources define these parameters. Missing documentation is indicated. Defaults are informational. Credentials are omitted.\n\n## Sources and maintenance\n\n- `bin/control.d/dns-check.json`\n- `bin/control.d/dns-check.sh`\n- `lib/control/helpers.sh`\n\nMaintain this description and its source hashes together when the code changes. The database stores a cache.",
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

- `bin/control.d/dns-check.json`
- `bin/control.d/dns-check.sh`
- `lib/control/helpers.sh`

Diese Datei ist die Pflegequelle fuer Mensch und Add-on. Bei Codeaenderungen
Beschreibung und Quellhashs gemeinsam pruefen. Die Datenbank ist nur Cache.
