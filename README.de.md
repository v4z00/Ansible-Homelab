[English](README.md) · [Deutsch](README.de.md)

# Ansible-Homelab

Hallöchen, hier sammle ich die Playbooks, die ich im Homelab immer wieder brauche, etwa für Backups und die Wartung von OpenWrt. Die gemeinsame Basis ist [Ansible-Allgm](https://github.com/v4z00/Ansible-Allgm). Auf einem frischen Controller installiert der Homelab-Installer sie gleich mit.

## Ein typischer Wartungslauf

Für den monatlichen Neustart teilst du deine OpenWrt-APs in Gruppen ein. Den Admin-AP, über den du selbst verbunden bist, trägst du gesondert ein. Das Playbook arbeitet die Gruppen nacheinander ab, der Admin-AP kommt zuletzt. Läuft der Auftrag auf dem Controller in tmux, übersteht er auch einen WLAN-Abbruch am Laptop. [OpenWrt-Neustart und Zeitplan](descriptions/commands/openwrt-reboot.md)

| Bereich | Einstieg |
| --- | --- |
| Sicherungen | [Backup-Befehl](descriptions/commands/backup.md) und [Playbooks](playbooks/backup/) für Controller-Konfiguration, Cron, fstab und OpenWrt. |
| Netzwerk | [OpenWrt-Playbooks](playbooks/network/openwrt/) für Konfigurationsvergleiche, Paketlisten und WLAN-Clients. |
| Speicher | [TrueNAS-Routen](descriptions/commands/truenas-routing.md) und [ZFS-Eigenschaften](descriptions/commands/zfs-optimize.md). |

Auf dem installierten Controller zeigt `bin/control module-versions` die Module und `bin/control list` die Befehle. Dein Inventory, deine Sicherungspfade und Zugangsdaten gehören auf den Controller.

Ich entwickle die Playbooks mit KI-Unterstützung. Wenn etwas bei dir anders läuft als beschrieben, freue ich mich über ein Issue.

Der Projektcode steht unter der [MIT-Lizenz](LICENSE).

[Changelog](descriptions/releases/homelab.md) · [GitHub-Releases](https://github.com/v4z00/Ansible-Homelab/releases)

Ich entwickle und teste auf `staging`. Freigegebene Änderungen kommen nach `main`.

- [Auf Debian installieren oder einen bestehenden Controller übernehmen](descriptions/configurations/installation-homelab.md)
- [Backups](descriptions/commands/backup.md) · [OpenWrt-APs neu starten](descriptions/commands/openwrt-reboot.md)
- [Befehle](descriptions/commands/) · [Playbooks](descriptions/playbooks/) · [Rollen](descriptions/roles/)
