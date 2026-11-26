# Playbook playbooks/backup/backup_all.yml

Vorhandener Einstieg: `playbooks/backup/backup_all.yml`.

Im Quelltext benannte Plays/Aufgaben:

- Inventory prüfen
- Backup-Defaults und vorhandene lokale Variablen laden
- Backup-Funktion pruefen
- Erforderliche Hostgruppen prüfen

Ausfuehrung bevorzugt ueber den passenden Control-Befehl. Die Datei allein beschreibt nicht alle effektiven Variablen: Rollen, Inventar und lokale Standortkonfiguration wirken weiterhin. Keine allgemeinen --check-/Limit-Garantien daraus ableiten.


## Parameter und maschinenlesbarer Vertrag

Die Angaben stammen aus den aufgefuehrten Quellen. Fehlende Erklaerungen sind
als solche markiert. Defaults sind Hinweise und werden nicht automatisch gesetzt.
Vertrauliche Werte werden nicht dokumentiert.

```json
{
  "schema_version": 1,
  "kind": "playbook",
  "ref": "playbooks/backup/backup_all.yml",
  "title": "Playbook playbooks/backup/backup_all.yml",
  "documented": false,
  "fields": [],
  "constraints": [],
  "sources": [
    "playbooks/backup/backup_all.yml"
  ],
  "source_hashes": {
    "playbooks/backup/backup_all.yml": "9b0a46c4ca5671c9c96fe1cd708930172052189120d378aeb2a0464854396e0c"
  },
  "i18n": {
    "de": {
      "title": "Playbook playbooks/backup/backup_all.yml",
      "description": "# Playbook playbooks/backup/backup_all.yml\n\nVorhandener Einstieg: `playbooks/backup/backup_all.yml`.\n\nIm Quelltext benannte Plays/Aufgaben:\n\n- Inventory prüfen\n- Backup-Defaults und vorhandene lokale Variablen laden\n- Backup-Funktion pruefen\n- Erforderliche Hostgruppen prüfen\n\nAusfuehrung bevorzugt ueber den passenden Control-Befehl. Die Datei allein beschreibt nicht alle effektiven Variablen: Rollen, Inventar und lokale Standortkonfiguration wirken weiterhin. Keine allgemeinen --check-/Limit-Garantien daraus ableiten.\n\n\n## Parameter und maschinenlesbarer Vertrag\n\nDie Angaben stammen aus den aufgefuehrten Quellen. Fehlende Erklaerungen sind\nals solche markiert. Defaults sind Hinweise und werden nicht automatisch gesetzt.\nVertrauliche Werte werden nicht dokumentiert.\n\n## Quellen und Pflege\n\n- `playbooks/backup/backup_all.yml`\n\nDiese Datei ist die Pflegequelle fuer Mensch und Add-on. Bei Codeaenderungen\nBeschreibung und Quellhashs gemeinsam pruefen. Die Datenbank ist nur Cache.",
      "fields": {}
    },
    "en": {
      "title": "Playbook playbooks/backup/backup_all.yml",
      "description": "# Playbook playbooks/backup/backup_all.yml\n\nPlaybook: `playbooks/backup/backup_all.yml`.\n\nPlay and task names as written in the playbook:\n\n- Inventory prüfen\n- Backup-Defaults und vorhandene lokale Variablen laden\n- Backup-Funktion pruefen\n- Erforderliche Hostgruppen prüfen\n\nRun the corresponding Control command. Roles, inventory and site settings also affect this playbook. Check support for --limit and check mode before use.\n\n## Parameters\n\nThe listed sources define these parameters. Missing documentation is indicated. Defaults are informational. Credentials are omitted.\n\n## Sources and maintenance\n\n- `playbooks/backup/backup_all.yml`\n\nMaintain this description and its source hashes together when the code changes. The database stores a cache.",
      "fields": {}
    }
  }
}
```

## Quellen und Pflege

- `playbooks/backup/backup_all.yml`

Diese Datei ist die Pflegequelle fuer Mensch und Add-on. Bei Codeaenderungen
Beschreibung und Quellhashs gemeinsam pruefen. Die Datenbank ist nur Cache.
