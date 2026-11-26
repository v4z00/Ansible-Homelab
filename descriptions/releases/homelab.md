# Changelog

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
