# Playbook playbooks/backup/backup_controller_configs.yml

Vorhandener Einstieg: `playbooks/backup/backup_controller_configs.yml`.

Im Quelltext benannte Plays/Aufgaben:

- Controller-Konfiguration sichern
- Gemeinsamen geprueften Datei-Backup-Pfad verwenden
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
  "ref": "playbooks/backup/backup_controller_configs.yml",
  "title": "Playbook playbooks/backup/backup_controller_configs.yml",
  "documented": false,
  "fields": [],
  "constraints": [],
  "sources": [
    "playbooks/backup/backup_controller_configs.yml"
  ],
  "source_hashes": {
    "playbooks/backup/backup_controller_configs.yml": "9beb3c349305d3ad96e7f0b978e58c0118221753870217e0af1141e0f7725415"
  }
}
```

## Quellen und Pflege

- `playbooks/backup/backup_controller_configs.yml`

Diese Datei ist die Pflegequelle fuer Mensch und Add-on. Bei Codeaenderungen
Beschreibung und Quellhashs gemeinsam pruefen. Die Datenbank ist nur Cache.
