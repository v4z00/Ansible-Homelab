# Playbook playbooks/backup/backup_bond_monitor.yml

Vorhandener Einstieg: `playbooks/backup/backup_bond_monitor.yml`.

Im Quelltext benannte Plays/Aufgaben:

- Bond-Monitor sichern
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
  "ref": "playbooks/backup/backup_bond_monitor.yml",
  "title": "Playbook playbooks/backup/backup_bond_monitor.yml",
  "documented": false,
  "fields": [],
  "constraints": [],
  "sources": [
    "playbooks/backup/backup_bond_monitor.yml"
  ],
  "source_hashes": {
    "playbooks/backup/backup_bond_monitor.yml": "b84ebde4215c6c17ae7bb608509007904c7dce703bb1d8df3bb57cc29f286e5a"
  }
}
```

## Quellen und Pflege

- `playbooks/backup/backup_bond_monitor.yml`

Diese Datei ist die Pflegequelle fuer Mensch und Add-on. Bei Codeaenderungen
Beschreibung und Quellhashs gemeinsam pruefen. Die Datenbank ist nur Cache.
