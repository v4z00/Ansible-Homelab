# OpenWrt-APs in Wellen neu starten, Admin-APs zuletzt

OpenWrt-APs in Wellen neu starten, Admin-APs zuletzt

Aufruf: `bin/control openwrt-reboot [Optionen]`.

Vorhandene Kurzformen: `wifi-reboot`, `openwrt-reboot`.

Feature: openwrt. Die aktuelle Aktivierung prueft weiterhin Control.

Voraussetzungen laut Registry:
- `lib/control/helpers.sh`
- `playbooks/network/openwrt/openwrt_reboot.yml`
- `roles/openwrt_reboot/tasks/main.yml`
- `roles/openwrt_reboot/action_plugins/openwrt_verified_reboot.py`

Gleiche Wellennummern starten parallel. Nach den nummerierten Wellen folgen die übrigen APs einzeln und zuletzt die Mitglieder von openwrt_admin_ap. Der Befehl läuft in tmux. Standardziel ist openwrt_router.

## Parameter und maschinenlesbarer Vertrag

Die Angaben stammen aus den aufgefuehrten Quellen. Fehlende Erklaerungen sind
als solche markiert. Defaults sind Hinweise und werden nicht automatisch gesetzt.
Vertrauliche Werte werden nicht dokumentiert.

```json
{
  "schema_version": 1,
  "kind": "command",
  "ref": "openwrt-reboot",
  "title": "OpenWrt-APs in Wellen neu starten, Admin-APs zuletzt",
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
    "lib/control/helpers.sh",
    "playbooks/network/openwrt/reboot_wave.yml",
    "scripts/openwrt_reboot_worker.sh"
  ],
  "source_hashes": {
    "bin/control.d/openwrt-reboot.json": "6425dba65542ddeaad184c407fecabd075842359887f18ae4ef543c66a40541d",
    "bin/control.d/openwrt-reboot.sh": "eca75b8eabbbbcc72eb7dcf1985d90e8979151723ae2b4b27c6db5233945b6a8",
    "playbooks/network/openwrt/reboot_wave.yml": "a9c67e241c1e43c5e229373d924126addd0487af7f63e9b0ca529604cc7a6c2e",
    "scripts/openwrt_reboot_worker.sh": "fb3dcf6d9999f63fbac03b7897a2bf367034d548c9aba9eb9fbd096b38aba1fc"
  }
}
```

## Quellen und Pflege

- `bin/control.d/openwrt-reboot.json`
- `bin/control.d/openwrt-reboot.sh`
- `lib/control/helpers.sh`

Diese Datei ist die Pflegequelle fuer Mensch und Add-on. Bei Codeaenderungen
Beschreibung und Quellhashs gemeinsam pruefen. Die Datenbank ist nur Cache.
