# Restart OpenWrt APs in waves, with admin APs last

Run: `bin/control openwrt-reboot [options]`.

Aliases: `wifi-reboot`, `openwrt-reboot`.

Feature: `openwrt`.

Registry prerequisites:
- `lib/control/helpers.sh`
- `playbooks/network/openwrt/openwrt_reboot.yml`
- `roles/openwrt_reboot/tasks/main.yml`
- `roles/openwrt_reboot/action_plugins/openwrt_verified_reboot.py`
- `playbooks/network/openwrt/reboot_wave.yml`
- `scripts/openwrt_reboot_worker.sh`
- `lib/controller_environment.sh`

## Schedule monthly restarts

Enable `features.openwrt` locally and put participating APs in `openwrt_router`. Assign the same `openwrt_reboot_wave` to hosts or subgroups that may go offline together. Waves 1–65535 run in ascending order, in parallel up to Ansible’s forks limit. Unnumbered APs follow individually. Members of `openwrt_admin_ap` restart individually at the end. Each AP must report a new boot ID and respond via ubus before the next wave starts. Failure stops subsequent waves. [Inventory example](../../examples/homelab/openwrt-reboot.inventory.example.yml)

```bash
bin/control openwrt-reboot --check
bin/control openwrt-reboot --limit openwrt_router
tmux attach -t ansible-openwrt-reboot
```

The command starts a detached tmux session on the controller. After losing SSH or Wi-Fi, reconnect and use the third command to reattach. Detach with Ctrl-b d. Results and playbook output are under `logs/`. Without an explicit limit, the target is `openwrt_router`.

To run at 04:00 on the last Sunday each month, add the [example schedule](../../examples/homelab/openwrt-reboot.schedule.example.yml) to local `controller_schedules` and run `bin/control schedules`. When updating an existing schedule, retain its name. Schedule management installs tmux for this job. For a first manual run without a schedule, install it with `apt-get install tmux`.

## Parameters

## Sources and maintenance

- `bin/control.d/openwrt-reboot.json`
- `bin/control.d/openwrt-reboot.sh`
- `lib/control/helpers.sh`

<details>
<summary>Deutsch</summary>

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

## Quellen und Pflege

- `bin/control.d/openwrt-reboot.json`
- `bin/control.d/openwrt-reboot.sh`
- `lib/control/helpers.sh`

</details>

<details>
<summary>Catalog metadata (JSON)</summary>

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
  },
  "i18n": {
    "de": {
      "title": "OpenWrt-APs in Wellen neu starten, Admin-APs zuletzt",
      "description": "# OpenWrt-APs in Wellen neu starten, Admin-APs zuletzt\n\nAufruf: `bin/control openwrt-reboot [Optionen]`.\n\nVorhandene Kurzformen: `wifi-reboot`, `openwrt-reboot`.\n\nDer Befehl gehört zum Feature `openwrt`.\n\nVoraussetzungen laut Registry:\n- `lib/control/helpers.sh`\n- `playbooks/network/openwrt/openwrt_reboot.yml`\n- `roles/openwrt_reboot/tasks/main.yml`\n- `roles/openwrt_reboot/action_plugins/openwrt_verified_reboot.py`\n- `playbooks/network/openwrt/reboot_wave.yml`\n- `scripts/openwrt_reboot_worker.sh`\n- `lib/controller_environment.sh`\n\n## Monatlichen Neustart einrichten\n\nAktiviere `features.openwrt` lokal und ordne alle teilnehmenden APs der Gruppe `openwrt_router` zu.\nGib Hosts oder Untergruppen mit `openwrt_reboot_wave` dieselbe Nummer, wenn sie gleichzeitig ausfallen dürfen.\nWellen von 1 bis 65535 laufen aufsteigend und innerhalb einer Welle bis zum Ansible-Forks-Limit parallel.\nAPs ohne Nummer folgen einzeln. Mitglieder von `openwrt_admin_ap` kommen einzeln ganz zum Schluss.\nJeder AP muss eine neue Boot-ID melden und über ubus antworten, bevor die nächste Welle startet.\nEin Fehler stoppt die folgenden Wellen. Das Inventarbeispiel steht in\n[openwrt-reboot.inventory.example.yml](../../examples/homelab/openwrt-reboot.inventory.example.yml).\n\n\u0060\u0060\u0060bash\nbin/control openwrt-reboot --check\nbin/control openwrt-reboot --limit openwrt_router\ntmux attach -t ansible-openwrt-reboot\n\u0060\u0060\u0060\n\nDer Befehl startet automatisch eine getrennte tmux-Sitzung auf dem Controller. Nach einer SSH- oder WLAN-Unterbrechung erneut anmelden und die Sitzung mit dem dritten Befehl öffnen. Mit `Strg-b d` wieder lösen. Ergebnis und Playbook-Ausgabe stehen unter `logs/`. Ohne Limit gilt die Gruppe `openwrt_router`.\n\nFür den letzten Sonntag jedes Monats um 04:00 Uhr den Eintrag aus\n[openwrt-reboot.schedule.example.yml](../../examples/homelab/openwrt-reboot.schedule.example.yml)\nzur lokalen Liste `controller_schedules` hinzufügen und `bin/control schedules` ausführen.\nBei einem bestehenden Zeitplan den bisherigen Eintrag aktualisieren und seinen Namen beibehalten.\nDie Zeitplanverwaltung installiert tmux für den Job. Für einen manuellen Erststart ohne Zeitplan stellt `apt-get install tmux` die Abhängigkeit bereit.\n\n## Parameter für die TUI\n\n## Quellen und Pflege\n\n- `bin/control.d/openwrt-reboot.json`\n- `bin/control.d/openwrt-reboot.sh`\n- `lib/control/helpers.sh`",
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
      "title": "Restart OpenWrt APs in waves, with admin APs last",
      "description": "# Restart OpenWrt APs in waves, with admin APs last\n\nRun: `bin/control openwrt-reboot [options]`.\n\nAliases: `wifi-reboot`, `openwrt-reboot`.\n\nFeature: `openwrt`.\n\nRegistry prerequisites:\n- `lib/control/helpers.sh`\n- `playbooks/network/openwrt/openwrt_reboot.yml`\n- `roles/openwrt_reboot/tasks/main.yml`\n- `roles/openwrt_reboot/action_plugins/openwrt_verified_reboot.py`\n- `playbooks/network/openwrt/reboot_wave.yml`\n- `scripts/openwrt_reboot_worker.sh`\n- `lib/controller_environment.sh`\n\n## Schedule monthly restarts\n\nEnable `features.openwrt` locally and put participating APs in `openwrt_router`. Assign the same `openwrt_reboot_wave` to hosts or subgroups that may go offline together. Waves 1–65535 run in ascending order, in parallel up to Ansible’s forks limit. Unnumbered APs follow individually. Members of `openwrt_admin_ap` restart individually at the end. Each AP must report a new boot ID and respond via ubus before the next wave starts. Failure stops subsequent waves. [Inventory example](../../examples/homelab/openwrt-reboot.inventory.example.yml)\n\n\u0060\u0060\u0060bash\nbin/control openwrt-reboot --check\nbin/control openwrt-reboot --limit openwrt_router\ntmux attach -t ansible-openwrt-reboot\n\u0060\u0060\u0060\n\nThe command starts a detached tmux session on the controller. After losing SSH or Wi-Fi, reconnect and use the third command to reattach. Detach with Ctrl-b d. Results and playbook output are under `logs/`. Without an explicit limit, the target is `openwrt_router`.\n\nTo run at 04:00 on the last Sunday each month, add the [example schedule](../../examples/homelab/openwrt-reboot.schedule.example.yml) to local `controller_schedules` and run `bin/control schedules`. When updating an existing schedule, retain its name. Schedule management installs tmux for this job. For a first manual run without a schedule, install it with `apt-get install tmux`.\n\n## Parameters\n\n## Sources and maintenance\n\n- `bin/control.d/openwrt-reboot.json`\n- `bin/control.d/openwrt-reboot.sh`\n- `lib/control/helpers.sh`",
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
