# WLAN-MAC-Sollzustand abgleichen und bei Aenderung automatisch neu laden

WLAN-MAC-Sollzustand abgleichen und bei Aenderung automatisch neu laden

Aufruf: `bin/control openwrt-mac-vlans [Optionen]`.

Vorhandene Kurzformen: `openwrt-mac-vlans`.

Feature: openwrt_mac_vlans. Die aktuelle Aktivierung prueft weiterhin Control.

Voraussetzungen laut Registry:
- `lib/control/helpers.sh`
- `playbooks/network/openwrt/configure_mac_vlans.yml`
- `roles/openwrt_mac_vlans/tasks/main.yml`

Bei bestehenden verwalteten WLAN-Abschnitten `openwrt_managed_prefix` lokal auf das bisher verwendete Präfix setzen. Neue Installationen verwenden `ansible_vlan`.

## Parameter und maschinenlesbarer Vertrag

Die Angaben stammen aus den aufgefuehrten Quellen. Fehlende Erklaerungen sind
als solche markiert. Defaults sind Hinweise und werden nicht automatisch gesetzt.
Vertrauliche Werte werden nicht dokumentiert.

```json
{
  "schema_version": 1,
  "kind": "command",
  "ref": "openwrt-mac-vlans",
  "title": "WLAN-MAC-Sollzustand abgleichen und bei Aenderung automatisch neu laden",
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
    "bin/control.d/openwrt-mac-vlans.json",
    "bin/control.d/openwrt-mac-vlans.sh",
    "lib/control/helpers.sh"
  ],
  "source_hashes": {
    "bin/control.d/openwrt-mac-vlans.json": "6df61f117e09123e59cbc7675aa2d1612cb33b57988dbe42f58444d73e8a945c",
    "bin/control.d/openwrt-mac-vlans.sh": "0681f44b469c4a0da9ae39029ec2a707115e85fc0210c59ec49d6098dc39fd4d"
  }
}
```

## Quellen und Pflege

- `bin/control.d/openwrt-mac-vlans.json`
- `bin/control.d/openwrt-mac-vlans.sh`
- `lib/control/helpers.sh`

Diese Datei ist die Pflegequelle fuer Mensch und Add-on. Bei Codeaenderungen
Beschreibung und Quellhashs gemeinsam pruefen. Die Datenbank ist nur Cache.
