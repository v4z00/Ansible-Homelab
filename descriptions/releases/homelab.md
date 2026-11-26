# Changelog

## s0.4.6 – Lesende systemd-Bestandsabfrage der Basis

Die Prüfsummen passen zu Allgm s0.8.4 mit dem eigenständigen Sammler für
Custom-/Skriptservices. Kein Unitwechsel, Hostdeployment oder Cronupdate.

## s0.4.5 – Jobberichte mit der korrigierten Basis

Die Prüfsummen passen zu Allgm s0.8.3. Die Basis erhält offene Versandkanäle bei
Abbrüchen und weist unvollständige Ansible-Abfragen auch bei Teilantworten aus.
Keine neue Konfiguration, kein Hostdeployment und keine Cronumstellung nötig.

## s0.4.4 – OpenWrt-Aufgaben und TrueNAS-Zieladressen

Jede OpenWrt-Operation hat eine eigene Taskdatei. Für den TrueNAS-Eintrag in der Hosts-Datei werden einzelne IPv4- und IPv6-Adressen akzeptiert. Ein leerer Wert entfernt den Eintrag wie bisher. Im Einstellungsbeispiel entsprechen Backup und Zeitpläne jetzt den bestehenden Release-Defaults.

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
