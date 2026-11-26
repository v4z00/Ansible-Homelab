# Playbook playbooks/backup/archive_legacy.yml

Vorhandener Einstieg: `playbooks/backup/archive_legacy.yml`.

Im Quelltext benannte Plays/Aufgaben:

- Bisherige automatische Sicherungen archivieren
- Backup-Defaults und vorhandene lokale Variablen laden
- Backup-Funktion pruefen
- Backup-Ziel prüfen
- Verschiebung anzeigen oder ausführen
- Ergebnis anzeigen

Ausfuehrung bevorzugt ueber den passenden Control-Befehl. Die Datei allein beschreibt nicht alle effektiven Variablen: Rollen, Inventar und lokale Standortkonfiguration wirken weiterhin. Keine allgemeinen --check-/Limit-Garantien daraus ableiten.


## Parameter und maschinenlesbarer Vertrag

Die Angaben stammen aus den aufgefuehrten Quellen. Fehlende Erklaerungen sind
als solche markiert. Defaults sind Hinweise und werden nicht automatisch gesetzt.
Vertrauliche Werte werden nicht dokumentiert.

```json
{
  "schema_version": 1,
  "kind": "playbook",
  "ref": "playbooks/backup/archive_legacy.yml",
  "title": "Playbook playbooks/backup/archive_legacy.yml",
  "documented": false,
  "fields": [],
  "constraints": [],
  "sources": [
    "playbooks/backup/archive_legacy.yml"
  ],
  "source_hashes": {
    "playbooks/backup/archive_legacy.yml": "d070cf674082e91a9945b51b5d947153691f4a985179839250c130c83a40a863"
  },
  "i18n": {
    "de": {
      "title": "Playbook playbooks/backup/archive_legacy.yml",
      "description": "# Playbook playbooks/backup/archive_legacy.yml\n\nVorhandener Einstieg: `playbooks/backup/archive_legacy.yml`.\n\nIm Quelltext benannte Plays/Aufgaben:\n\n- Bisherige automatische Sicherungen archivieren\n- Backup-Defaults und vorhandene lokale Variablen laden\n- Backup-Funktion pruefen\n- Backup-Ziel prüfen\n- Verschiebung anzeigen oder ausführen\n- Ergebnis anzeigen\n\nAusfuehrung bevorzugt ueber den passenden Control-Befehl. Die Datei allein beschreibt nicht alle effektiven Variablen: Rollen, Inventar und lokale Standortkonfiguration wirken weiterhin. Keine allgemeinen --check-/Limit-Garantien daraus ableiten.\n\n\n## Parameter und maschinenlesbarer Vertrag\n\nDie Angaben stammen aus den aufgefuehrten Quellen. Fehlende Erklaerungen sind\nals solche markiert. Defaults sind Hinweise und werden nicht automatisch gesetzt.\nVertrauliche Werte werden nicht dokumentiert.\n\n## Quellen und Pflege\n\n- `playbooks/backup/archive_legacy.yml`\n\nDiese Datei ist die Pflegequelle fuer Mensch und Add-on. Bei Codeaenderungen\nBeschreibung und Quellhashs gemeinsam pruefen. Die Datenbank ist nur Cache.",
      "fields": {}
    },
    "en": {
      "title": "Playbook playbooks/backup/archive_legacy.yml",
      "description": "# Playbook playbooks/backup/archive_legacy.yml\n\nPlaybook: `playbooks/backup/archive_legacy.yml`.\n\nPlay and task names as written in the playbook:\n\n- Bisherige automatische Sicherungen archivieren\n- Backup-Defaults und vorhandene lokale Variablen laden\n- Backup-Funktion pruefen\n- Backup-Ziel prüfen\n- Verschiebung anzeigen oder ausführen\n- Ergebnis anzeigen\n\nRun the corresponding Control command. Roles, inventory and site settings also affect this playbook. Check support for --limit and check mode before use.\n\n## Parameters\n\nThe listed sources define these parameters. Missing documentation is indicated. Defaults are informational. Credentials are omitted.\n\n## Sources and maintenance\n\n- `playbooks/backup/archive_legacy.yml`\n\nMaintain this description and its source hashes together when the code changes. The database stores a cache.",
      "fields": {}
    }
  }
}
```

## Quellen und Pflege

- `playbooks/backup/archive_legacy.yml`

Diese Datei ist die Pflegequelle fuer Mensch und Add-on. Bei Codeaenderungen
Beschreibung und Quellhashs gemeinsam pruefen. Die Datenbank ist nur Cache.
