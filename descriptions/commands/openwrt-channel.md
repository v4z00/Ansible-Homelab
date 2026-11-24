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
    "bin/control.d/openwrt-channel.sh": "63663d2e81499b25870ffcaa8b938518455f1525520c81b0a1358e4f7265c459"
  }
}
```

## Quellen und Pflege

- `bin/control.d/openwrt-channel.json`
- `bin/control.d/openwrt-channel.sh`
- `lib/control/helpers.sh`

Diese Datei ist die Pflegequelle fuer Mensch und Add-on. Bei Codeaenderungen
Beschreibung und Quellhashs gemeinsam pruefen. Die Datenbank ist nur Cache.
