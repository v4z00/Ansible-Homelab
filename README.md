Hallöchen, das ist mein Repo für die Aufgaben, die sich im Homelab ständig wiederholen. Die Playbooks vergleichen OpenWrt-Konfigurationen, prüfen Systeme und sichern Dateien. Sie bauen auf Ansible-Allgm auf.

Ich programmiere selbst nur selten. Die Ideen und Anforderungen kommen von mir. Beim Schreiben und Testen des Codes hilft mir KI. Welche Änderungen ich übernehme, entscheide ich selbst.

Bitte probier die Playbooks zuerst mit Testdaten aus und prüfe vor dem Ausführen die Zielhosts. Wenn ein Playbook bei dir anders läuft als beschrieben, freue ich mich über ein Issue oder einen Pull Request. Ein kleines Beispiel mit erfundenen Werten hilft mir beim Nachstellen.

## Installation per Pipe

Für Debian 12 und 13. Für den ersten Abruf müssen `curl`, CA-Zertifikate und für die gezeigten Aufrufe `sudo` verfügbar sein. Fehlende Startwerkzeuge auf einem Minimalsystem als root mit `apt-get update && apt-get install -y ca-certificates curl sudo` installieren.

Auf einem leeren Controller beschafft und installiert dieser Aufruf auch Allgm.

```bash
(set -o pipefail; curl -qfsSL --proto "=https" --proto-redir "=https" "https://raw.githubusercontent.com/v4z00/Ansible-Homelab/main/install.sh" | sudo bash)
```

Der Installer prüft die SHA-256-Manifeste vor der Installation, richtet `/root/ansible` ein und trägt die HTTPS-Origins in die lokale `versions.txt` ein. Die Repo-Adressen gehören zum GitHub-Konto `v4z00`.

## Backup-Ziele für bestehende Controller

Ordne die gewünschten Hosts lokal den Inventory-Gruppen `bond_monitor_backup_hosts` und `certificate_backup_hosts` zu. Hinterlege die absoluten Quellpfade in `bond_monitor_backup_paths` und `certificate_backup_paths`. Für die Übernahme bestehender OpenWrt-Regeln setze `openwrt_managed_prefix` auf das bisherige lokale Präfix.

## Monatlicher OpenWrt-Neustart

Aktiviere `features.openwrt` lokal und ordne alle teilnehmenden APs der Gruppe `openwrt_router` zu.
Gib Hosts oder Untergruppen mit `openwrt_reboot_wave` dieselbe Nummer, wenn sie gleichzeitig ausfallen dürfen.
Wellen von 1 bis 65535 laufen aufsteigend und innerhalb einer Welle bis zum Ansible-Forks-Limit parallel.
APs ohne Nummer folgen einzeln. Mitglieder von `openwrt_admin_ap` kommen einzeln ganz zum Schluss.
Jeder AP muss eine neue Boot-ID melden und über ubus antworten, bevor die nächste Welle startet.
Ein Fehler stoppt die folgenden Wellen. Das Inventarbeispiel steht in
[openwrt-reboot.inventory.example.yml](examples/homelab/openwrt-reboot.inventory.example.yml).

```bash
bin/control openwrt-reboot --check
bin/control openwrt-reboot --limit openwrt_router
tmux attach -t ansible-openwrt-reboot
```

Der Befehl startet automatisch eine getrennte tmux-Sitzung auf dem Controller. Nach einer SSH- oder WLAN-Unterbrechung erneut anmelden und die Sitzung mit dem dritten Befehl öffnen. Mit `Strg-b d` wieder lösen. Ergebnis und Playbook-Ausgabe stehen unter `logs/`. Ohne Limit gilt die Gruppe `openwrt_router`.

Für den letzten Sonntag jedes Monats um 04:00 Uhr den Eintrag aus
[openwrt-reboot.schedule.example.yml](examples/homelab/openwrt-reboot.schedule.example.yml)
zur lokalen Liste `controller_schedules` hinzufügen und `bin/control schedules` ausführen.
Bei einem bestehenden Zeitplan den bisherigen Eintrag aktualisieren und seinen Namen beibehalten.
Die Zeitplanverwaltung installiert tmux für den Job. Für einen manuellen Erststart ohne Zeitplan stellt `apt-get install tmux` die Abhängigkeit bereit.

## Arbeit mit einem Checkout

Commits aktualisieren das SHA-256-Manifest über `.githooks`. Nach dem Klonen
für die Entwicklung `git config core.hooksPath .githooks` ausführen.

Homelab für OpenWrt, Storage, Backup und Controlleraufgaben.
Allgm daneben klonen und `./install-controller --target PFAD` aufrufen.

Beide öffentlichen Repos auf dem Controller anonym über HTTPS von `main`
klonen. Der Installer ergänzt die lokale `versions.txt` um die Homelab-Zeile.
Bei Allgm und Homelab bleibt das letzte Feld für den Token-Dateipfad leer.

## Erstinstallation auf Debian

Auf einem frischen Debian 12/13 den Checkout außerhalb von `/root/ansible` ablegen und Allgm daneben bereitstellen. Aus diesem Repo als root starten. Der Installer ergänzt fehlende Debian-Pakete über APT, richtet die Ansible-Laufzeit ein und legt bei leerem Ziel lokale Startdateien an.

```sh
./install-controller --target /root/ansible
```

## Bestehenden Controller migrieren

Bei einem bestehenden `/root/ansible/bin/control` den Checkout getrennt ablegen. Aus diesem Repo zuerst die Vorschau aufrufen und die zum Ersetzen markierten lokalen Codeänderungen vergleichen. Den angezeigten Plan-Hash erst nach Prüfung einsetzen.

```sh
./install-controller --target /root/ansible --update
./install-controller --target /root/ansible --update --apply PLAN_SHA256
/root/ansible/bin/control update-check --remote
```

Inventory, lokale Gruppen- und Hostvariablen sowie eigene Dateien außerhalb der angezeigten Codepfade bleiben erhalten. Der Installer gibt eine Sicherungskennung aus. Der Rückweg vor dem nächsten Codewechsel lautet `./install-controller --target /root/ansible --rollback SICHERUNGSKENNUNG`.

## Aufbau und eigene Erweiterungen

`install.sh` richtet dieses Profil und die gemeinsame Basis ein. Unter `playbooks/` liegen die Einstiege für OpenWrt, Storage und Sicherungen, unter `roles/` die zugehörigen Aufgaben. `descriptions/` erläutert Befehle und Voraussetzungen.

Für einen eigenen Ablauf ein separates lokales Paket mit `code/playbooks/`, `code/roles/` oder `code/scripts/` pflegen. Nach der Profilinstallation als root das Paket installieren und die lokalen SHA-256 prüfen:

```bash
cd /root/ansible
python3 tools/local_extension.py install /root/mein-paket
bin/control update-check --only local
```

Ein vollständiges Paketbeispiel mit Freigabe, Ausführung, Cron-Verhalten und Archivprüfung steht im [Basis-README](https://github.com/v4z00/Ansible-Allgm#aufbau-und-lokale-erweiterungen).
