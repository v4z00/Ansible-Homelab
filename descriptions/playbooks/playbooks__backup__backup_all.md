# Playbook playbooks/backup/backup_all.yml

Vorhandener Einstieg: `playbooks/backup/backup_all.yml`.

Im Quelltext benannte Plays/Aufgaben:

- Inventory prüfen
- Erforderliche Hostgruppen prüfen
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
  }
}
```

## Quellen und Pflege

- `playbooks/backup/backup_all.yml`

Diese Datei ist die Pflegequelle fuer Mensch und Add-on. Bei Codeaenderungen
Beschreibung und Quellhashs gemeinsam pruefen. Die Datenbank ist nur Cache.
