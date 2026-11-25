# WLAN-MAC-Sollzustand abgleichen und bei Aenderung automatisch neu laden

Aufruf: `bin/control openwrt-mac-vlans [Optionen]`.

Vorhandene Kurzformen: `openwrt-mac-vlans`.

Der Befehl gehört zum Feature `openwrt_mac_vlans`.

Voraussetzungen laut Registry:
- `lib/control/helpers.sh`
- `playbooks/network/openwrt/configure_mac_vlans.yml`
- `roles/openwrt_mac_vlans/tasks/main.yml`

## Bestehende WLAN-Regeln übernehmen

Für bereits verwaltete WLAN-Abschnitte setzt du `openwrt_managed_prefix` auf das bisher verwendete Präfix. Neue Installationen verwenden `ansible_vlan`.

## Parameter für die TUI

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
    "bin/control.d/openwrt-mac-vlans.sh": "0681f44b469c4a0da9ae39029ec2a707115e85fc0210c59ec49d6098dc39fd4d",
    "lib/control/helpers.sh": "71898aff95dfffd6873a1e6c4f90e3bdce23c25f6eed0df640dde87afd3bc19e"
  }
}
```

## Quellen und Pflege

- `bin/control.d/openwrt-mac-vlans.json`
- `bin/control.d/openwrt-mac-vlans.sh`
- `lib/control/helpers.sh`
