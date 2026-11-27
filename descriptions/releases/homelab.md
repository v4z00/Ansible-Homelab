# Changelog

## s0.5.0 – Compose the Windows and host-security foundation

Align the profile with Allgm s0.9.0, job module 0.6.0 and checker 1.5.5. Windows
HTTPS access, separate bootstrap/Checkmk paths and PowerShell/SQLite primitives are
available as a staging source preview. Host security outboxes can send directly;
ordinary job summaries remain central. Existing Linux profiles keep their assignments.

This checkpoint does not activate Windows tasks, migrate private scripts/SYSVOL or
change GPOs. Authenticated Windows, ACL, MSI and signing pilots remain pending.
Use bin/setup-runtime for pywinrm and prepare the pinned SQLite artifact separately.
Older updater allowlists need the matching staging checkout installer, its preview
and explicit plan hash for the first code update; select this Homelab profile with
the new Allgm checkout. No production deployment or main promotion is included.

## 0.4.15 – Compose builds and quieter service summaries

Align checks with Allgm 0.8.13 and job module 0.5.5. Healthy systemd observations remain queryable without routine report entries. Docker deployment builds local images; updates retry registry pulls before container changes. The boolean `docker_compose_build` defaults to true and can be disabled in private host/group variables. Existing mandatory checks remain; no automatic host or cron migration.

## 0.4.14 – English documentation and language selection

The English README now walks through a maintenance run. Catalog pages open in English and include the German text. New installations suggest a language from the locale and accept an explicit choice. Existing controllers without a language preference still use German.

## Previous releases

### 0.4.13

Align checks with Allgm 0.8.11, job module 0.5.4 and checker 1.5.4. Generated units use valid path syntax. Preview service profiles with `--check`; installing the controller does not enable services or rewrite cron.

### s0.4.12

Align with Allgm s0.8.10 and job module 0.5.3. Job reporting supports multiple cron windows and configurable observation periods. Standalone service deployments use the full root defaults.

### s0.4.11

Align with Allgm s0.8.9. Numeric time fields in local Ansible variables are valid for service profiles.

### s0.4.10

Align with Allgm s0.8.8 and job module 0.5.1. Explicit service profiles can use their own account, libraries and private JSON rendered from host variables.

### s0.4.9

Align with Allgm s0.8.7 and checker 1.5.4. Operators can explicitly migrate a local extension register to `.local/extensions`; updates retain its current location.

### s0.4.8

Align with Allgm s0.8.6 and job module 0.5.0 for profile-based private directories and systemd units. Review private sources and preview the deployment before selecting services.

### s0.4.7

Use the base systemd profile status checks for explicitly selected services. Existing hosts require no changes without a profile selection.

### s0.4.6

Align with Allgm s0.8.4 for read-only discovery of custom services. No host deployment or cron changes are required.

### s0.4.5

Align with Allgm s0.8.3. Pending delivery channels survive interruptions and partially answered host queries are reported as incomplete.

### 0.4.4

Dedicated task files for each OpenWrt operation. TrueNAS routing accepts a single IPv4 or IPv6 address or an empty value to remove the entry. Backup and schedules examples match release defaults.

### s0.4.4

Preview of the OpenWrt task split, validated TrueNAS addresses and aligned backup and schedule defaults.

### 0.4.3

Supports Allgm 0.8.1, Git add-ons and German or English controller output. Review the [base migration procedure](https://github.com/v4z00/Ansible-Allgm/blob/main/descriptions/commands/update-check.md) for older controllers.

### s0.4.3

Align installer and local package checks with Allgm s0.8.1. Custom commands, Git add-ons and archiving are documented in the [extension guide](https://github.com/v4z00/Ansible-Allgm/blob/staging/EXTENDING.md).

### s0.4.2

Use the shared Docker, Apache and Checkmk backup settings from Allgm s0.8.0. Existing absolute paths take precedence.

### s0.4.1

Align with Allgm s0.7.0 for local package registers. The checker reports when an older register needs the documented migration.

### s0.4.0

The profile inherits the controller language. Configuration and TUI command descriptions support German and English.

### s0.3.2

Align with Allgm s0.5.0. Register SSS once in local `versions.txt` if required. Add-on update and rollback run alongside the profile.

### s0.3.1

The installer forwards add-on URLs and optional token-file paths to the base. Profile verification supports the add-on-aware checker.

### s0.3.0

Backup steps and early failures can feed the central job summary. Without central reporting the previous notification path remains active. Set up Allgm 0.4.0 and explicitly choose a summary schedule. An update alone leaves cron untouched.

### 0.2.3

Inspect installed modules with `bin/control module-versions`; the profile uses checksums for Allgm 0.3.1.

### 0.2.2

My first GitHub release. Adds backup, OpenWrt and storage playbooks to Allgm 0.3.0. Monthly AP restarts run in waves with the admin AP last. TrueNAS routing and ZFS settings can use privilege escalation.

<details>
<summary>Deutsch · frühere Versionshinweise</summary>

## 0.4.13 – Korrigierte Dienstpfade

Diese Freigabe bündelt die Prüfdaten-Anpassungen seit 0.4.4 für Allgm 0.8.11 mit Jobmodul 0.5.4 und Controller-Prüfer 1.5.4. Zentrale Berichte, explizite private Dienstprofile und wiederkehrende Cronfenster verwenden damit die freigegebene gemeinsame Basis.

Bestehende Hostvariablen, private Skriptquellen und Zeitpläne bleiben maßgeblich. Neue Dienstprofile werden separat ausgewählt und zuerst mit `--check` geprüft; das Controllerupdate aktiviert keine Dienste und stellt keine Cronjobs um. Eine gewünschte Registermigration erfolgt separat mit Vorschau und Sicherung über die [Anleitung der Basis](https://github.com/v4z00/Ansible-Allgm/blob/main/descriptions/commands/update-check.md).

Prüfdaten passen zu Allgm s0.8.11 / Jobmodul 0.5.4. Neu erzeugte systemd-Units
verwenden die gültige Syntax für Arbeitsverzeichnis und PID-Datei.
Keine automatische Dienstaktivierung.

## s0.4.12 – Mehrere Cronfenster und Dienststandardwerte

Prüfdaten passen zu Allgm s0.8.10 / Jobmodul 0.5.3. Die Statusprüfung unterstützt
mehrere tägliche bzw. häufige Termine und konfigurierbare Beobachtungsfristen.
Das eigenständige Dienstdeployment nutzt seine Root-Standardwerte vollständig.
Keine automatische Jobauswahl, Änderung der Zeitpläne oder Prozessbeendigung.

## s0.4.11 – Korrigierte Zahlenprüfung für Dienstprofile

Prüfdaten passen zu Allgm s0.8.9 / Jobmodul 0.5.2. Numerische Zeitwerte aus
lokalen Ansible-Variablen werden bei der Profilprüfung korrekt angenommen.
Bestehende Auswahl und Aktivierung bleiben unverändert.

## s0.4.10 – Private Dienstprofile der gemeinsamen Basis

Prüfdaten passen zu Allgm s0.8.8 / Jobmodul 0.5.1. Optionale Profil-Libraries
und private, aus Hostvariablen gerenderte JSON-Konfiguration unterstützen getrennte
Dienstbenutzer. Keine automatische Auswahl, Aktivierung oder Rechteerweiterung.

## s0.4.9 – Registerablage der gemeinsamen Basis

Prüfdaten passen zu Allgm s0.8.7 / Prüfer 1.5.4. Lokale Zusatzregister können
bei ausdrücklicher Umstellung unter `ansible/.local/extensions` liegen. Bestehende
Ablagen bleiben erhalten; beim Update wird nichts automatisch verschoben.

## s0.4.8 – Private Dienstprofile aus der Basis

Die Prüfsummen passen zu Allgm s0.8.6 / Jobmodul 0.5.0. Private Quellordner
lassen sich je Profil unter einem expliziten Zielpfad bereitstellen; systemd-Units
entstehen aus Profilwerten. Listenprofile bleiben reine Statusanbindungen.
Keine Dienst-/Cronumstellung durch ein Controllerupdate. Vor Nutzung die privaten
Quellen prüfen und den gezielten Aufruf zuerst mit `--check` ausführen.

## s0.4.7 – Systemd-Statusprofile der gemeinsamen Basis

Die Pruefsummen passen zu Allgm s0.8.5 und Jobmodul 0.4.3. Das bestehende
Skript-Deployment kann explizit gewaehlte systemd-Profile in dieselbe SQLite-/
Summary-Auswertung aufnehmen. Keine automatische Diensterkennung aus Dateien,
keine Service- oder Cronumstellung durch die reine Statusanbindung.
Ohne konfigurierte Profilauswahl ist fuer bestehende Hosts nichts zu tun.

## s0.4.6 – Lesende systemd-Bestandsabfrage der Basis

Die Prüfsummen passen zu Allgm s0.8.4 mit dem eigenständigen Sammler für
Custom-/Skriptservices. Kein Unitwechsel, Hostdeployment oder Cronupdate.

## s0.4.5 – Jobberichte mit der korrigierten Basis

Die Prüfsummen passen zu Allgm s0.8.3. Die Basis erhält offene Versandkanäle bei
Abbrüchen und weist unvollständige Ansible-Abfragen auch bei Teilantworten aus.
Keine neue Konfiguration, kein Hostdeployment und keine Cronumstellung nötig.

## 0.4.4 – OpenWrt-Aufgaben und TrueNAS-Zieladressen

Jede OpenWrt-Operation hat eine eigene Taskdatei. Für den TrueNAS-Eintrag in der Hosts-Datei werden einzelne IPv4- und IPv6-Adressen akzeptiert. Ein leerer Wert entfernt den Eintrag wie bisher. Im Einstellungsbeispiel entsprechen Backup und Zeitpläne jetzt den bestehenden Release-Defaults.

## s0.4.4 – OpenWrt-Aufgaben und TrueNAS-Zieladressen

Jede OpenWrt-Operation hat eine eigene Taskdatei. Für den TrueNAS-Eintrag in der Hosts-Datei werden einzelne IPv4- und IPv6-Adressen akzeptiert. Ein leerer Wert entfernt den Eintrag wie bisher. Im Einstellungsbeispiel entsprechen Backup und Zeitpläne jetzt den bestehenden Release-Defaults.

## 0.4.3 – Homelab mit Allgm 0.8.1

Das Profil unterstützt die neue gemeinsame Basis, optionale Git-Add-ons und die deutsch- und englischsprachige Bedienung. Vor dem ersten Wechsel eines älteren Controllers den [Migrationsweg der Basis](https://github.com/v4z00/Ansible-Allgm/blob/main/descriptions/commands/update-check.md#sss-aus-einem-älteren-controller-übernehmen) prüfen.

## s0.4.3 – Erweiterungen mit der gemeinsamen Basis pflegen

Das Profil übernimmt die Prüfsummen der Basis s0.8.1 für Installation und lokale Einmalpakete. Die Beispiele für eigene Befehle, Git-Add-ons und die Archivierung stehen im [Entwicklerleitfaden](https://github.com/v4z00/Ansible-Allgm/blob/staging/EXTENDING.de.md).

## s0.4.2 – Betriebspfade der gemeinsamen Basis

Das Profil verwendet die neuen Einstellungen der Basis s0.8.0 für Docker, Apache und das Checkmk-Backup. Bestehende absolute Pfadangaben haben weiter Vorrang.

## s0.4.1 – Lokale Pakete auf der neuen Basis

Das Profil übernimmt den Registerprüfer aus Allgm s0.7.0. Bei alten lokalen
Freigaben meldet der Checker den nötigen Migrationsschritt. Der Ablauf steht
in der Beschreibung `descriptions/commands/update-check.md`
auf dem installierten Controller.

## s0.4.0 – Zweisprachige Controlleransicht

Das Homelab-Profil übernimmt die Sprachwahl aus der Basis. Der Konfigurationsdialog
und die Befehlsbeschreibungen für die TUI unterstützen Deutsch und Englisch.

## s0.3.2 – Optionale SSS-Installation

Das Homelab-Profil verwendet die Basis s0.5.0. Wer den SSS-Notfallkoffer braucht,
registriert ihn einmal in der lokalen `versions.txt`. Die Profilprüfung folgt
dem gemeinsamen Update und Rollback.

## s0.3.1 – Git-Add-ons mit dem Homelab-Profil installieren

Der Installer reicht `--addon NAME=HTTPS_URL` und `--addon-token-file NAME=PFAD` an die Basis weiter. Die Profil-Prüfsummen passen zum Add-on-fähigen Checker.

## s0.3.0 – Backup-Ergebnisse in der zentralen Zusammenfassung

26. November 2026

Der Backup-Wrapper erfasst seine Teilabläufe und Vorabfehler im eingerichteten
Jobcontroller. Die zentrale Summary ersetzt dann die zusätzliche Backupmeldung.
Ohne Controlleranbindung bleibt das bisherige Verhalten erhalten.

Für die zentrale Erfassung zuerst Ansible-Allgm 0.4.0 bereitstellen und die
Jobcontroller-Einrichtung mit den vorhandenen Kanalwerten und einem ausdrücklich
gewählten Summary-Zeitplan durchführen. Das Update allein ändert keine Cronjobs.

## 0.2.3 – Versionsanzeige für Controller-Module

Die Prüfsummen für den Versionsbefehl aus Allgm 0.3.1 sind nachgezogen. Die Modulstände lassen sich mit `bin/control module-versions` anzeigen.

## 0.2.2 – Mein Start mit GitHub

24. November 2026

Hier beginnt mein Changelog für das Homelab. Die Erweiterung baut auf Ansible-Allgm auf und bringt die Playbooks für Backups, OpenWrt und Storage mit.

- OpenWrt-APs können beim Monatsneustart in Gruppen laufen. Der Admin-AP kommt zuletzt, der Lauf bleibt in tmux erreichbar.
- Das TrueNAS-Routing und das Setzen von ZFS-Eigenschaften verwenden bei Bedarf erhöhte Rechte.
- Die Prüfsummen sind mit der gemeinsamen Basis 0.3.0 abgeglichen.

</details>
