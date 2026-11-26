# Playbook playbooks/backup/backup_cron.yml

Vorhandener Einstieg: `playbooks/backup/backup_cron.yml`.

Im Quelltext benannte Plays/Aufgaben:

- Cron sichern
- Backup-Defaults und vorhandene lokale Variablen laden
- Backup-Funktion pruefen
- Sicherung ausführen

Ausfuehrung bevorzugt ueber den passenden Control-Befehl. Die Datei allein beschreibt nicht alle effektiven Variablen: Rollen, Inventar und lokale Standortkonfiguration wirken weiterhin. Keine allgemeinen --check-/Limit-Garantien daraus ableiten.


## Parameter und maschinenlesbarer Vertrag

Die Angaben stammen aus den aufgefuehrten Quellen. Fehlende Erklaerungen sind
als solche markiert. Defaults sind Hinweise und werden nicht automatisch gesetzt.
Vertrauliche Werte werden nicht dokumentiert.

```json
{
  "schema_version": 1,
  "kind": "playbook",
  "ref": "playbooks/backup/backup_cron.yml",
  "title": "Playbook playbooks/backup/backup_cron.yml",
  "documented": false,
  "fields": [],
  "constraints": [],
  "sources": [
    "playbooks/backup/backup_cron.yml"
  ],
  "source_hashes": {
    "playbooks/backup/backup_cron.yml": "42b6519a0e97187e6e3f7f99d11c643a1552e720552d7c85b793c22933f35c55"
  },
  "i18n": {
    "de": {
      "title": "Playbook playbooks/backup/backup_cron.yml",
      "description": "# Playbook playbooks/backup/backup_cron.yml\n\nVorhandener Einstieg: `playbooks/backup/backup_cron.yml`.\n\nIm Quelltext benannte Plays/Aufgaben:\n\n- Cron sichern\n- Backup-Defaults und vorhandene lokale Variablen laden\n- Backup-Funktion pruefen\n- Sicherung ausführen\n\nAusfuehrung bevorzugt ueber den passenden Control-Befehl. Die Datei allein beschreibt nicht alle effektiven Variablen: Rollen, Inventar und lokale Standortkonfiguration wirken weiterhin. Keine allgemeinen --check-/Limit-Garantien daraus ableiten.\n\n\n## Parameter und maschinenlesbarer Vertrag\n\nDie Angaben stammen aus den aufgefuehrten Quellen. Fehlende Erklaerungen sind\nals solche markiert. Defaults sind Hinweise und werden nicht automatisch gesetzt.\nVertrauliche Werte werden nicht dokumentiert.\n\n## Quellen und Pflege\n\n- `playbooks/backup/backup_cron.yml`\n\nDiese Datei ist die Pflegequelle fuer Mensch und Add-on. Bei Codeaenderungen\nBeschreibung und Quellhashs gemeinsam pruefen. Die Datenbank ist nur Cache.",
      "fields": {}
    },
    "en": {
      "title": "Playbook playbooks/backup/backup_cron.yml",
      "description": "# Playbook playbooks/backup/backup_cron.yml\n\nPlaybook: `playbooks/backup/backup_cron.yml`.\n\nPlay and task names as written in the playbook:\n\n- Cron sichern\n- Backup-Defaults und vorhandene lokale Variablen laden\n- Backup-Funktion pruefen\n- Sicherung ausführen\n\nRun the corresponding Control command. Roles, inventory and site settings also affect this playbook. Check support for --limit and check mode before use.\n\n## Parameters\n\nThe listed sources define these parameters. Missing documentation is indicated. Defaults are informational. Credentials are omitted.\n\n## Sources and maintenance\n\n- `playbooks/backup/backup_cron.yml`\n\nMaintain this description and its source hashes together when the code changes. The database stores a cache.",
      "fields": {}
    }
  }
}
```

## Quellen und Pflege

- `playbooks/backup/backup_cron.yml`

Diese Datei ist die Pflegequelle fuer Mensch und Add-on. Bei Codeaenderungen
Beschreibung und Quellhashs gemeinsam pruefen. Die Datenbank ist nur Cache.
