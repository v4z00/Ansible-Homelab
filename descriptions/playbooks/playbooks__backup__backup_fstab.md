# Playbook playbooks/backup/backup_fstab.yml

Vorhandener Einstieg: `playbooks/backup/backup_fstab.yml`.

Im Quelltext benannte Plays/Aufgaben:

- FSTAB sichern
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
  "ref": "playbooks/backup/backup_fstab.yml",
  "title": "Playbook playbooks/backup/backup_fstab.yml",
  "documented": false,
  "fields": [],
  "constraints": [],
  "sources": [
    "playbooks/backup/backup_fstab.yml"
  ],
  "source_hashes": {
    "playbooks/backup/backup_fstab.yml": "6cab9b4b17d8e1aff4c8b7b074d08db0832a95dc349209cd86e2477cf7ef9b8f"
  }
}
```

## Quellen und Pflege

- `playbooks/backup/backup_fstab.yml`

Diese Datei ist die Pflegequelle fuer Mensch und Add-on. Bei Codeaenderungen
Beschreibung und Quellhashs gemeinsam pruefen. Die Datenbank ist nur Cache.
