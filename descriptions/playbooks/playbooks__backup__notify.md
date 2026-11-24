# Playbook playbooks/backup/notify.yml

Vorhandener Einstieg: `playbooks/backup/notify.yml`.

Im Quelltext benannte Plays/Aufgaben:

- Backup-Ergebnis melden
- Backup-Zusammenfassung lesen
- Telegram-Nachricht senden
- Fehlende optionale Telegram-Konfiguration anzeigen

Ausfuehrung bevorzugt ueber den passenden Control-Befehl. Die Datei allein beschreibt nicht alle effektiven Variablen: Rollen, Inventar und lokale Standortkonfiguration wirken weiterhin. Keine allgemeinen --check-/Limit-Garantien daraus ableiten.


## Parameter und maschinenlesbarer Vertrag

Die Angaben stammen aus den aufgefuehrten Quellen. Fehlende Erklaerungen sind
als solche markiert. Defaults sind Hinweise und werden nicht automatisch gesetzt.
Vertrauliche Werte werden nicht dokumentiert.

```json
{
  "schema_version": 1,
  "kind": "playbook",
  "ref": "playbooks/backup/notify.yml",
  "title": "Playbook playbooks/backup/notify.yml",
  "documented": false,
  "fields": [],
  "constraints": [],
  "sources": [
    "playbooks/backup/notify.yml"
  ],
  "source_hashes": {
    "playbooks/backup/notify.yml": "6c98bb087ad90ddc21828e24a37e5e6d3eb56c75231edf68ebaaf36e3ab62463"
  }
}
```

## Quellen und Pflege

- `playbooks/backup/notify.yml`

Diese Datei ist die Pflegequelle fuer Mensch und Add-on. Bei Codeaenderungen
Beschreibung und Quellhashs gemeinsam pruefen. Die Datenbank ist nur Cache.


## TLS-Zertifikatspruefung pro Aufgabe (1.1.0)

Optionale Eintraege unter `tls_validate_certs` in `group_vars/all/settings.yml`.
Fehlende Eintraege erben tls_validate_certs_default (ohne Standortstandard true); explizites false deaktiviert nur die genannte Pruefung.
- `tls_validate_certs.backup_telegram_notification`: Telegram-Nachricht senden (Standard true).

Standortstandard: tls_validate_certs_default (ohne Eintrag true). Telegram-Aufgaben
verwenden unabhaengig davon true als Default, ausser bei explizitem Task-Override.
