# OpenWrt-APs seriell neu starten; Boot-ID pruefen; --limit ZIEL erforderlich

OpenWrt-APs seriell neu starten; Boot-ID pruefen; --limit ZIEL erforderlich

Aufruf: `bin/control openwrt-reboot [Optionen]`.

Vorhandene Kurzformen: `wifi-reboot`, `openwrt-reboot`.

Feature: openwrt. Die aktuelle Aktivierung prueft weiterhin Control.

Voraussetzungen laut Registry:
- `lib/control/helpers.sh`
- `playbooks/network/openwrt/openwrt_reboot.yml`
- `roles/openwrt_reboot/tasks/main.yml`
- `roles/openwrt_reboot/action_plugins/openwrt_verified_reboot.py`

## Parameter und maschinenlesbarer Vertrag

Die Angaben stammen aus den aufgefuehrten Quellen. Fehlende Erklaerungen sind
als solche markiert. Defaults sind Hinweise und werden nicht automatisch gesetzt.
Vertrauliche Werte werden nicht dokumentiert.

```json
{
  "schema_version": 1,
  "kind": "command",
  "ref": "openwrt-reboot",
  "title": "OpenWrt-APs seriell neu starten; Boot-ID pruefen; --limit ZIEL erforderlich",
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
    "bin/control.d/openwrt-reboot.json",
    "bin/control.d/openwrt-reboot.sh",
    "lib/control/helpers.sh"
  ],
  "source_hashes": {
    "bin/control.d/openwrt-reboot.json": "8527984cd4355bca99e7999300a7f30bb4722c357dafdd6102e65708ad3f5413",
    "bin/control.d/openwrt-reboot.sh": "85372a64387c4e662d8301c42882ae1421cb49b8b9d5dfe2ccead3f39b7440ba"
  }
}
```

## Quellen und Pflege

- `bin/control.d/openwrt-reboot.json`
- `bin/control.d/openwrt-reboot.sh`
- `lib/control/helpers.sh`

Diese Datei ist die Pflegequelle fuer Mensch und Add-on. Bei Codeaenderungen
Beschreibung und Quellhashs gemeinsam pruefen. Die Datenbank ist nur Cache.
