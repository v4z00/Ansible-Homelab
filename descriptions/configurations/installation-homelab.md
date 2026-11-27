# Install Ansible-Homelab on Debian

## Quick install

For Debian 12 and 13. The initial fetch needs `curl`, CA certificates and, for the commands below, `sudo`. On a minimal system, run `apt-get update && apt-get install -y ca-certificates curl sudo` as root first.

On an empty controller the command also retrieves and installs Allgm.

```bash
(set -o pipefail; curl -qfsSL --proto "=https" --proto-redir "=https" "https://raw.githubusercontent.com/v4z00/Ansible-Homelab/main/install.sh" | sudo bash)
```

The installer verifies the SHA-256 manifests, prepares `/root/ansible` and records the HTTPS origins in local `versions.txt`.

On a new controller the installer suggests a language from the locale. Press Enter to accept or type `de` or `en`. For an unattended installation, pass `--lang de` or `--lang en` to the installer (after `sudo bash -s --` in the pipe command). An existing controller keeps its local choice. Without an explicit setting it continues to use German.

## Install from a checkout

Clone both public repositories from main anonymously over HTTPS. The installer adds the Homelab row to local `versions.txt`. Leave the fourth token-file field empty for both Allgm and Homelab.

On fresh Debian 12/13, keep the checkout outside `/root/ansible` alongside Allgm. Run as root from this repository. The installer adds missing Debian packages through APT, prepares Ansible and initializes local starter files only for an empty target.

```sh
./install-controller --target /root/ansible
```

## Adopt an existing controller

If `/root/ansible/bin/control` exists, keep the checkout separate. Preview from this repository first and compare local code changes marked for replacement. Use the displayed plan hash only after review.

```sh
./install-controller --target /root/ansible --update
./install-controller --target /root/ansible --update --apply PLAN_SHA256
/root/ansible/bin/control update-check --remote
```

Inventory, local group/host variables and files outside the listed code paths are preserved. The installer prints a backup ID. Before the next code change restore with `./install-controller --target /root/ansible --rollback BACKUP_ID`.

## Local extensions

`install.sh` installs this profile and the shared base. Entry points for OpenWrt, storage and backups are under `playbooks/`, with their tasks in `roles/`. Command usage and prerequisites are under `descriptions/`.

Maintain custom workflows in a separate local package with `code/playbooks/`, `code/roles/` or `code/scripts/`. After installing the profile, install the package as root and verify its local SHA-256 hashes:

```bash
cd /root/ansible
python3 tools/local_extension.py install /root/mein-paket
bin/control update-check --only local
```

[Approval, execution and archiving in the base project](https://github.com/v4z00/Ansible-Allgm/blob/main/descriptions/commands/update-check.md).

## Contribute

In the development checkout, enable Git hooks once with `git config core.hooksPath .githooks`. Commits refresh the SHA-256 manifest.

<details>
<summary>Deutsch</summary>

# Ansible-Homelab auf Debian installieren

## Schnellinstallation

Für Debian 12 und 13. Für den ersten Abruf müssen `curl`, CA-Zertifikate und für die gezeigten Aufrufe `sudo` verfügbar sein. Fehlende Startwerkzeuge auf einem Minimalsystem als root mit `apt-get update && apt-get install -y ca-certificates curl sudo` installieren.

Auf einem leeren Controller beschafft und installiert dieser Aufruf auch Allgm.

```bash
(set -o pipefail; curl -qfsSL --proto "=https" --proto-redir "=https" "https://raw.githubusercontent.com/v4z00/Ansible-Homelab/main/install.sh" | sudo bash)
```

Der Installer prüft die SHA-256-Manifeste vor der Installation, richtet `/root/ansible` ein und trägt die HTTPS-Origins in die lokale `versions.txt` ein.

Bei der Erstinstallation schlägt der Installer die Sprache aus der Locale vor. Enter übernimmt den Vorschlag, `de` oder `en` wählt die Sprache. Für unbeaufsichtigte Installationen `--lang de` oder `--lang en` übergeben (beim Pipe-Aufruf nach `sudo bash -s --`). Bei bestehenden Controllern bleibt die lokale Auswahl erhalten. Ohne Eintrag gilt dort weiterhin Deutsch.

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

</details>

<details>
<summary>Catalog metadata (JSON)</summary>

```json
{
  "schema_version": 1,
  "kind": "configuration",
  "ref": "installation/homelab",
  "title": "Ansible-Homelab auf Debian installieren",
  "documented": true,
  "fields": [],
  "sources": [],
  "source_hashes": {},
  "i18n": {
    "de": {
      "title": "Ansible-Homelab auf Debian installieren",
      "description": "# Ansible-Homelab auf Debian installieren\n\n## Schnellinstallation\n\nFür Debian 12 und 13. Für den ersten Abruf müssen `curl`, CA-Zertifikate und für die gezeigten Aufrufe `sudo` verfügbar sein. Fehlende Startwerkzeuge auf einem Minimalsystem als root mit `apt-get update && apt-get install -y ca-certificates curl sudo` installieren.\n\nAuf einem leeren Controller beschafft und installiert dieser Aufruf auch Allgm.\n\n```bash\n(set -o pipefail; curl -qfsSL --proto \"=https\" --proto-redir \"=https\" \"https://raw.githubusercontent.com/v4z00/Ansible-Homelab/main/install.sh\" | sudo bash)\n```\n\nDer Installer prüft die SHA-256-Manifeste vor der Installation, richtet `/root/ansible` ein und trägt die HTTPS-Origins in die lokale `versions.txt` ein.\n\nBei der Erstinstallation schlägt der Installer die Sprache aus der Locale vor. Enter übernimmt den Vorschlag, `de` oder `en` wählt die Sprache. Für unbeaufsichtigte Installationen `--lang de` oder `--lang en` übergeben (beim Pipe-Aufruf nach `sudo bash -s --`). Bei bestehenden Controllern bleibt die lokale Auswahl erhalten. Ohne Eintrag gilt dort weiterhin Deutsch.\n\n## Installation aus einem Checkout\n\nBeide öffentlichen Repos auf dem Controller anonym über HTTPS von `main`\nklonen. Der Installer ergänzt die lokale `versions.txt` um die Homelab-Zeile.\nBei Allgm und Homelab bleibt das letzte Feld für den Token-Dateipfad leer.\n\nAuf einem frischen Debian 12/13 den Checkout außerhalb von `/root/ansible` ablegen und Allgm daneben bereitstellen. Aus diesem Repo als root starten. Der Installer ergänzt fehlende Debian-Pakete über APT, richtet die Ansible-Laufzeit ein und legt bei leerem Ziel lokale Startdateien an.\n\n```sh\n./install-controller --target /root/ansible\n```\n\n## Bestehenden Controller übernehmen\n\nBei einem bestehenden `/root/ansible/bin/control` den Checkout getrennt ablegen. Aus diesem Repo zuerst die Vorschau aufrufen und die zum Ersetzen markierten lokalen Codeänderungen vergleichen. Den angezeigten Plan-Hash erst nach Prüfung einsetzen.\n\n```sh\n./install-controller --target /root/ansible --update\n./install-controller --target /root/ansible --update --apply PLAN_SHA256\n/root/ansible/bin/control update-check --remote\n```\n\nInventory, lokale Gruppen- und Hostvariablen sowie eigene Dateien außerhalb der angezeigten Codepfade bleiben erhalten. Der Installer gibt eine Sicherungskennung aus. Der Rückweg vor dem nächsten Codewechsel lautet `./install-controller --target /root/ansible --rollback SICHERUNGSKENNUNG`.\n\n## Lokale Erweiterungen\n\n`install.sh` richtet dieses Profil und die gemeinsame Basis ein. Unter `playbooks/` liegen die Einstiege für OpenWrt, Storage und Sicherungen, unter `roles/` die zugehörigen Aufgaben. `descriptions/` erläutert Befehle und Voraussetzungen.\n\nFür einen eigenen Ablauf ein separates lokales Paket mit `code/playbooks/`, `code/roles/` oder `code/scripts/` pflegen. Nach der Profilinstallation als root das Paket installieren und die lokalen SHA-256 prüfen:\n\n```bash\ncd /root/ansible\npython3 tools/local_extension.py install /root/mein-paket\nbin/control update-check --only local\n```\n\n[Freigabe, Ausführung und Archivierung im Basisprojekt](https://github.com/v4z00/Ansible-Allgm/blob/main/descriptions/commands/update-check.md).\n\n## Am Repo mitarbeiten\n\nAktiviere im Entwicklungs-Checkout einmalig die Git-Hooks mit `git config core.hooksPath .githooks`. Beim Commit aktualisieren sie das SHA-256-Manifest.",
      "fields": {}
    },
    "en": {
      "title": "Install Ansible-Homelab on Debian",
      "description": "# Install Ansible-Homelab on Debian\n\n## Quick install\n\nFor Debian 12 and 13. The initial fetch needs `curl`, CA certificates and, for the commands below, `sudo`. On a minimal system, run `apt-get update && apt-get install -y ca-certificates curl sudo` as root first.\n\nOn an empty controller the command also retrieves and installs Allgm.\n\n```bash\n(set -o pipefail; curl -qfsSL --proto \"=https\" --proto-redir \"=https\" \"https://raw.githubusercontent.com/v4z00/Ansible-Homelab/main/install.sh\" | sudo bash)\n```\n\nThe installer verifies the SHA-256 manifests, prepares `/root/ansible` and records the HTTPS origins in local `versions.txt`.\n\nOn a new controller the installer suggests a language from the locale. Press Enter to accept or type `de` or `en`. For an unattended installation, pass `--lang de` or `--lang en` to the installer (after `sudo bash -s --` in the pipe command). An existing controller keeps its local choice. Without an explicit setting it continues to use German.\n\n## Install from a checkout\n\nClone both public repositories from main anonymously over HTTPS. The installer adds the Homelab row to local `versions.txt`. Leave the fourth token-file field empty for both Allgm and Homelab.\n\nOn fresh Debian 12/13, keep the checkout outside `/root/ansible` alongside Allgm. Run as root from this repository. The installer adds missing Debian packages through APT, prepares Ansible and initializes local starter files only for an empty target.\n\n```sh\n./install-controller --target /root/ansible\n```\n\n## Adopt an existing controller\n\nIf `/root/ansible/bin/control` exists, keep the checkout separate. Preview from this repository first and compare local code changes marked for replacement. Use the displayed plan hash only after review.\n\n```sh\n./install-controller --target /root/ansible --update\n./install-controller --target /root/ansible --update --apply PLAN_SHA256\n/root/ansible/bin/control update-check --remote\n```\n\nInventory, local group/host variables and files outside the listed code paths are preserved. The installer prints a backup ID. Before the next code change restore with `./install-controller --target /root/ansible --rollback BACKUP_ID`.\n\n## Local extensions\n\n`install.sh` installs this profile and the shared base. Entry points for OpenWrt, storage and backups are under `playbooks/`, with their tasks in `roles/`. Command usage and prerequisites are under `descriptions/`.\n\nMaintain custom workflows in a separate local package with `code/playbooks/`, `code/roles/` or `code/scripts/`. After installing the profile, install the package as root and verify its local SHA-256 hashes:\n\n```bash\ncd /root/ansible\npython3 tools/local_extension.py install /root/mein-paket\nbin/control update-check --only local\n```\n\n[Approval, execution and archiving in the base project](https://github.com/v4z00/Ansible-Allgm/blob/main/descriptions/commands/update-check.md).\n\n## Contribute\n\nIn the development checkout, enable Git hooks once with `git config core.hooksPath .githooks`. Commits refresh the SHA-256 manifest.",
      "fields": {}
    }
  }
}
```

</details>
