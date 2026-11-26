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
  },
  "i18n": {
    "de": {
      "title": "Playbook playbooks/backup/notify.yml",
      "description": "# Playbook playbooks/backup/notify.yml\n\nVorhandener Einstieg: `playbooks/backup/notify.yml`.\n\nIm Quelltext benannte Plays/Aufgaben:\n\n- Backup-Ergebnis melden\n- Backup-Zusammenfassung lesen\n- Telegram-Nachricht senden\n- Fehlende optionale Telegram-Konfiguration anzeigen\n\nAusfuehrung bevorzugt ueber den passenden Control-Befehl. Die Datei allein beschreibt nicht alle effektiven Variablen: Rollen, Inventar und lokale Standortkonfiguration wirken weiterhin. Keine allgemeinen --check-/Limit-Garantien daraus ableiten.\n\n\n## Parameter und maschinenlesbarer Vertrag\n\nDie Angaben stammen aus den aufgefuehrten Quellen. Fehlende Erklaerungen sind\nals solche markiert. Defaults sind Hinweise und werden nicht automatisch gesetzt.\nVertrauliche Werte werden nicht dokumentiert.\n\n## Quellen und Pflege\n\n- `playbooks/backup/notify.yml`\n\nDiese Datei ist die Pflegequelle fuer Mensch und Add-on. Bei Codeaenderungen\nBeschreibung und Quellhashs gemeinsam pruefen. Die Datenbank ist nur Cache.\n\n\n## TLS-Zertifikatspruefung pro Aufgabe (1.1.0)\n\nOptionale Eintraege unter `tls_validate_certs` in `group_vars/all/settings.yml`.\nFehlende Eintraege erben tls_validate_certs_default (ohne Standortstandard true); explizites false deaktiviert nur die genannte Pruefung.\n- `tls_validate_certs.backup_telegram_notification`: Telegram-Nachricht senden (Standard true).\n\nStandortstandard: tls_validate_certs_default (ohne Eintrag true). Telegram-Aufgaben\nverwenden unabhaengig davon true als Default, ausser bei explizitem Task-Override.",
      "fields": {}
    },
    "en": {
      "title": "Playbook playbooks/backup/notify.yml",
      "description": "# Playbook playbooks/backup/notify.yml\n\nPlaybook: `playbooks/backup/notify.yml`.\n\nPlay and task names as written in the playbook:\n\n- Backup-Ergebnis melden\n- Backup-Zusammenfassung lesen\n- Telegram-Nachricht senden\n- Fehlende optionale Telegram-Konfiguration anzeigen\n\nRun the corresponding Control command. Roles, inventory and site settings also affect this playbook. Check support for --limit and check mode before use.\n\n## Parameters\n\nThe listed sources define these parameters. Missing documentation is indicated. Defaults are informational. Credentials are omitted.\n\n## Sources and maintenance\n\n- `playbooks/backup/notify.yml`\n\nMaintain this description and its source hashes together when the code changes. The database stores a cache.\n\n## Per-task TLS certificate validation (1.1.0)\n\nIn `group_vars/all/settings.yml`, `tls_validate_certs.backup_telegram_notification` controls certificate validation for Telegram backup notifications. It defaults to true. Explicit false disables this check only.\n\nThe site default is `tls_validate_certs_default`, normally true. Telegram tasks independently default to true unless their own override is set.",
      "fields": {}
    }
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
