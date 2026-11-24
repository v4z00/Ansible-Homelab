# Playbook playbooks/backup/backup_cron.yml

Vorhandener Einstieg: `playbooks/backup/backup_cron.yml`.

Im Quelltext benannte Plays/Aufgaben:

- Cron sichern
- Sicherung ausführen
- Backup-Defaults und vorhandene lokale Variablen laden
- Backup-Funktion pruefen

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
  }
}
```

## Quellen und Pflege

- `playbooks/backup/backup_cron.yml`

Diese Datei ist die Pflegequelle fuer Mensch und Add-on. Bei Codeaenderungen
Beschreibung und Quellhashs gemeinsam pruefen. Die Datenbank ist nur Cache.
