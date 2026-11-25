# OpenWrt-APs in Wellen neu starten, Admin-APs zuletzt

Aufruf: `bin/control openwrt-reboot [Optionen]`.

Vorhandene Kurzformen: `wifi-reboot`, `openwrt-reboot`.

Der Befehl gehört zum Feature `openwrt`.

Voraussetzungen laut Registry:
- `lib/control/helpers.sh`
- `playbooks/network/openwrt/openwrt_reboot.yml`
- `roles/openwrt_reboot/tasks/main.yml`
- `roles/openwrt_reboot/action_plugins/openwrt_verified_reboot.py`
- `playbooks/network/openwrt/reboot_wave.yml`
- `scripts/openwrt_reboot_worker.sh`
- `lib/controller_environment.sh`

## Monatlichen Neustart einrichten

Aktiviere `features.openwrt` lokal und ordne alle teilnehmenden APs der Gruppe `openwrt_router` zu.
Gib Hosts oder Untergruppen mit `openwrt_reboot_wave` dieselbe Nummer, wenn sie gleichzeitig ausfallen dürfen.
Wellen von 1 bis 65535 laufen aufsteigend und innerhalb einer Welle bis zum Ansible-Forks-Limit parallel.
APs ohne Nummer folgen einzeln. Mitglieder von `openwrt_admin_ap` kommen einzeln ganz zum Schluss.
Jeder AP muss eine neue Boot-ID melden und über ubus antworten, bevor die nächste Welle startet.
Ein Fehler stoppt die folgenden Wellen. Das Inventarbeispiel steht in
[openwrt-reboot.inventory.example.yml](../../examples/homelab/openwrt-reboot.inventory.example.yml).

```bash
bin/control openwrt-reboot --check
bin/control openwrt-reboot --limit openwrt_router
tmux attach -t ansible-openwrt-reboot
```

Der Befehl startet automatisch eine getrennte tmux-Sitzung auf dem Controller. Nach einer SSH- oder WLAN-Unterbrechung erneut anmelden und die Sitzung mit dem dritten Befehl öffnen. Mit `Strg-b d` wieder lösen. Ergebnis und Playbook-Ausgabe stehen unter `logs/`. Ohne Limit gilt die Gruppe `openwrt_router`.

Für den letzten Sonntag jedes Monats um 04:00 Uhr den Eintrag aus
[openwrt-reboot.schedule.example.yml](../../examples/homelab/openwrt-reboot.schedule.example.yml)
zur lokalen Liste `controller_schedules` hinzufügen und `bin/control schedules` ausführen.
Bei einem bestehenden Zeitplan den bisherigen Eintrag aktualisieren und seinen Namen beibehalten.
Die Zeitplanverwaltung installiert tmux für den Job. Für einen manuellen Erststart ohne Zeitplan stellt `apt-get install tmux` die Abhängigkeit bereit.

## Parameter für die TUI

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
    "scripts/openwrt_reboot_worker.sh": "fb3dcf6d9999f63fbac03b7897a2bf367034d548c9aba9eb9fbd096b38aba1fc",
    "lib/control/helpers.sh": "71898aff95dfffd6873a1e6c4f90e3bdce23c25f6eed0df640dde87afd3bc19e"
  }
}
```

## Quellen und Pflege

- `bin/control.d/openwrt-reboot.json`
- `bin/control.d/openwrt-reboot.sh`
- `lib/control/helpers.sh`
