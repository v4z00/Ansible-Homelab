# Playbook playbooks/storage/zfs/optimize.yml

Vorhandener Einstieg: `playbooks/storage/zfs/optimize.yml`.

Im Quelltext benannte Plays/Aufgaben:

- Konfigurierte ZFS-Properties abgleichen
- Ausdrueckliches Ziel pruefen
- Feature pruefen
- ZFS-Konfiguration pruefen
- Aktuelle Properties lesen
- Ausdruecklich konfigurierte Property setzen
- Geplante Aenderungen im Check-Modus zeigen

Ausfuehrung bevorzugt ueber den passenden Control-Befehl. Die Datei allein beschreibt nicht alle effektiven Variablen: Rollen, Inventar und lokale Standortkonfiguration wirken weiterhin. Keine allgemeinen --check-/Limit-Garantien daraus ableiten.


## Parameter und maschinenlesbarer Vertrag

Die Angaben stammen aus den aufgefuehrten Quellen. Fehlende Erklaerungen sind
als solche markiert. Defaults sind Hinweise und werden nicht automatisch gesetzt.
Vertrauliche Werte werden nicht dokumentiert.

```json
{
  "schema_version": 1,
  "kind": "playbook",
  "ref": "playbooks/storage/zfs/optimize.yml",
  "title": "Playbook playbooks/storage/zfs/optimize.yml",
  "documented": false,
  "fields": [],
  "constraints": [],
  "sources": [
    "playbooks/storage/zfs/optimize.yml"
  ],
  "source_hashes": {
    "playbooks/storage/zfs/optimize.yml": "5ef294ac634ce70fecc1b0595158826b7c6188388a4b8df8803c203b36995883"
  }
}
```

## Quellen und Pflege

- `playbooks/storage/zfs/optimize.yml`

Diese Datei ist die Pflegequelle fuer Mensch und Add-on. Bei Codeaenderungen
Beschreibung und Quellhashs gemeinsam pruefen. Die Datenbank ist nur Cache.
