# Playbook playbooks/backup/backup_certificates.yml

Vorhandener Einstieg: `playbooks/backup/backup_certificates.yml`.

Im Quelltext benannte Plays/Aufgaben:

- Zertifikatsdateien sichern
- Backup-Defaults und vorhandene lokale Variablen laden
- Backup-Funktion pruefen
- Lokale Sicherungspfade pruefen
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
  "ref": "playbooks/backup/backup_certificates.yml",
  "title": "Playbook playbooks/backup/backup_certificates.yml",
  "documented": false,
  "fields": [],
  "constraints": [],
  "sources": [
    "playbooks/backup/backup_certificates.yml"
  ],
  "source_hashes": {
    "playbooks/backup/backup_certificates.yml": "471c2d00424eb9d0103f925cde57b6ee1a04ffd995ca2a706d25f4f839e46cf6"
  },
  "i18n": {
    "de": {
      "title": "Playbook playbooks/backup/backup_certificates.yml",
      "description": "# Playbook playbooks/backup/backup_certificates.yml\n\nVorhandener Einstieg: `playbooks/backup/backup_certificates.yml`.\n\nIm Quelltext benannte Plays/Aufgaben:\n\n- Zertifikatsdateien sichern\n- Backup-Defaults und vorhandene lokale Variablen laden\n- Backup-Funktion pruefen\n- Lokale Sicherungspfade pruefen\n- Sicherung ausführen\n\nAusfuehrung bevorzugt ueber den passenden Control-Befehl. Die Datei allein beschreibt nicht alle effektiven Variablen: Rollen, Inventar und lokale Standortkonfiguration wirken weiterhin. Keine allgemeinen --check-/Limit-Garantien daraus ableiten.\n\n\n## Parameter und maschinenlesbarer Vertrag\n\nDie Angaben stammen aus den aufgefuehrten Quellen. Fehlende Erklaerungen sind\nals solche markiert. Defaults sind Hinweise und werden nicht automatisch gesetzt.\nVertrauliche Werte werden nicht dokumentiert.\n\n## Quellen und Pflege\n\n- `playbooks/backup/backup_certificates.yml`\n\nDiese Datei ist die Pflegequelle fuer Mensch und Add-on. Bei Codeaenderungen\nBeschreibung und Quellhashs gemeinsam pruefen. Die Datenbank ist nur Cache.",
      "fields": {}
    },
    "en": {
      "title": "Playbook playbooks/backup/backup_certificates.yml",
      "description": "# Playbook playbooks/backup/backup_certificates.yml\n\nPlaybook: `playbooks/backup/backup_certificates.yml`.\n\nPlay and task names as written in the playbook:\n\n- Zertifikatsdateien sichern\n- Backup-Defaults und vorhandene lokale Variablen laden\n- Backup-Funktion pruefen\n- Lokale Sicherungspfade pruefen\n- Sicherung ausführen\n\nRun the corresponding Control command. Roles, inventory and site settings also affect this playbook. Check support for --limit and check mode before use.\n\n## Parameters\n\nThe listed sources define these parameters. Missing documentation is indicated. Defaults are informational. Credentials are omitted.\n\n## Sources and maintenance\n\n- `playbooks/backup/backup_certificates.yml`\n\nMaintain this description and its source hashes together when the code changes. The database stores a cache.",
      "fields": {}
    }
  }
}
```

## Quellen und Pflege

- `playbooks/backup/backup_certificates.yml`

Diese Datei ist die Pflegequelle fuer Mensch und Add-on. Bei Codeaenderungen
Beschreibung und Quellhashs gemeinsam pruefen. Die Datenbank ist nur Cache.
