# Playbook playbooks/backup/backup_scripte.yaml

Vorhandener Einstieg: `playbooks/backup/backup_scripte.yaml`.

Im Quelltext benannte Plays/Aufgaben:

- Skripte sichern
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
  "ref": "playbooks/backup/backup_scripte.yaml",
  "title": "Playbook playbooks/backup/backup_scripte.yaml",
  "documented": false,
  "fields": [],
  "constraints": [],
  "sources": [
    "playbooks/backup/backup_scripte.yaml"
  ],
  "source_hashes": {
    "playbooks/backup/backup_scripte.yaml": "3439adae9a5576cc8f5ae639a999c332e6de6ef29ccce1a44b0c47c0cdd41862"
  }
}
```

## Quellen und Pflege

- `playbooks/backup/backup_scripte.yaml`

Diese Datei ist die Pflegequelle fuer Mensch und Add-on. Bei Codeaenderungen
Beschreibung und Quellhashs gemeinsam pruefen. Die Datenbank ist nur Cache.
