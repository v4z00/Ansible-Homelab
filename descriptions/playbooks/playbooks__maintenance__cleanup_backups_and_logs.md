# Playbook playbooks/maintenance/cleanup_backups_and_logs.yml

Vorhandener Einstieg: `playbooks/maintenance/cleanup_backups_and_logs.yml`.

Im Quelltext benannte Plays/Aufgaben:

- Backups und historische Logs rotieren/bereinigen
- confirm_cleanup
- Vorschau der rotierbaren Logs und Backups ermitteln
- Vorschau anzeigen
- Bestaetigung pruefen
- Alte Backups und Logs bereinigen
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
  "ref": "playbooks/maintenance/cleanup_backups_and_logs.yml",
  "title": "Playbook playbooks/maintenance/cleanup_backups_and_logs.yml",
  "documented": false,
  "fields": [],
  "constraints": [],
  "sources": [
    "playbooks/maintenance/cleanup_backups_and_logs.yml"
  ],
  "source_hashes": {
    "playbooks/maintenance/cleanup_backups_and_logs.yml": "f3bf78780cd789c226151e3048dcdc3c15fa9490f118a873750c558a3ba302b8"
  }
}
```

## Quellen und Pflege

- `playbooks/maintenance/cleanup_backups_and_logs.yml`

Diese Datei ist die Pflegequelle fuer Mensch und Add-on. Bei Codeaenderungen
Beschreibung und Quellhashs gemeinsam pruefen. Die Datenbank ist nur Cache.
