# Playbook playbooks/backup/archive_legacy.yml

Vorhandener Einstieg: `playbooks/backup/archive_legacy.yml`.

Im Quelltext benannte Plays/Aufgaben:

- Bisherige automatische Sicherungen archivieren
- Backup-Ziel prüfen
- Verschiebung anzeigen oder ausführen
- Ergebnis anzeigen
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
  }
}
```

## Quellen und Pflege

- `playbooks/backup/archive_legacy.yml`

Diese Datei ist die Pflegequelle fuer Mensch und Add-on. Bei Codeaenderungen
Beschreibung und Quellhashs gemeinsam pruefen. Die Datenbank ist nur Cache.
