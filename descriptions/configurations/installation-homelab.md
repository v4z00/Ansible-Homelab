# Ansible-Homelab auf Debian installieren

## Schnellinstallation

Für Debian 12 und 13. Für den ersten Abruf müssen `curl`, CA-Zertifikate und für die gezeigten Aufrufe `sudo` verfügbar sein. Fehlende Startwerkzeuge auf einem Minimalsystem als root mit `apt-get update && apt-get install -y ca-certificates curl sudo` installieren.

Auf einem leeren Controller beschafft und installiert dieser Aufruf auch Allgm.

```bash
(set -o pipefail; curl -qfsSL --proto "=https" --proto-redir "=https" "https://raw.githubusercontent.com/v4z00/Ansible-Homelab/main/install.sh" | sudo bash)
```

Der Installer prüft die SHA-256-Manifeste vor der Installation, richtet `/root/ansible` ein und trägt die HTTPS-Origins in die lokale `versions.txt` ein.

## Installation aus einem Checkout

Beide öffentlichen Repos auf dem Controller anonym über HTTPS von `main`
klonen. Der Installer ergänzt die lokale `versions.txt` um die Homelab-Zeile.
Bei Allgm und Homelab bleibt das letzte Feld für den Token-Dateipfad leer.

Auf einem frischen Debian 12/13 den Checkout außerhalb von `/root/ansible` ablegen und Allgm daneben bereitstellen. Aus diesem Repo als root starten. Der Installer ergänzt fehlende Debian-Pakete über APT, richtet die Ansible-Laufzeit ein und legt bei leerem Ziel lokale Startdateien an.

```sh
./install-controller --target /root/ansible
```

## Bestehenden Controller übernehmen

Bei einem bestehenden `/root/ansible/bin/control` den Checkout getrennt ablegen. Aus diesem Repo zuerst die Vorschau aufrufen und die zum Ersetzen markierten lokalen Codeänderungen vergleichen. Den angezeigten Plan-Hash erst nach Prüfung einsetzen.

```sh
./install-controller --target /root/ansible --update
./install-controller --target /root/ansible --update --apply PLAN_SHA256
/root/ansible/bin/control update-check --remote
```

Inventory, lokale Gruppen- und Hostvariablen sowie eigene Dateien außerhalb der angezeigten Codepfade bleiben erhalten. Der Installer gibt eine Sicherungskennung aus. Der Rückweg vor dem nächsten Codewechsel lautet `./install-controller --target /root/ansible --rollback SICHERUNGSKENNUNG`.

## Lokale Erweiterungen

`install.sh` richtet dieses Profil und die gemeinsame Basis ein. Unter `playbooks/` liegen die Einstiege für OpenWrt, Storage und Sicherungen, unter `roles/` die zugehörigen Aufgaben. `descriptions/` erläutert Befehle und Voraussetzungen.

Für einen eigenen Ablauf ein separates lokales Paket mit `code/playbooks/`, `code/roles/` oder `code/scripts/` pflegen. Nach der Profilinstallation als root das Paket installieren und die lokalen SHA-256 prüfen:

```bash
cd /root/ansible
python3 tools/local_extension.py install /root/mein-paket
bin/control update-check --only local
```

[Freigabe, Ausführung und Archivierung im Basisprojekt](https://github.com/v4z00/Ansible-Allgm/blob/main/descriptions/commands/update-check.md).

## Am Repo mitarbeiten

Aktiviere im Entwicklungs-Checkout einmalig die Git-Hooks mit `git config core.hooksPath .githooks`. Beim Commit aktualisieren sie das SHA-256-Manifest.

```json
{
  "schema_version": 1,
  "kind": "configuration",
  "ref": "installation/homelab",
  "title": "Ansible-Homelab auf Debian installieren",
  "documented": true,
  "fields": [],
  "sources": [],
  "source_hashes": {}
}
```
