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
  }
}
```

## Quellen und Pflege

- `bin/control.d/wan-check.json`
- `bin/control.d/wan-check.sh`
- `lib/control/helpers.sh`

Diese Datei ist die Pflegequelle fuer Mensch und Add-on. Bei Codeaenderungen
Beschreibung und Quellhashs gemeinsam pruefen. Die Datenbank ist nur Cache.
