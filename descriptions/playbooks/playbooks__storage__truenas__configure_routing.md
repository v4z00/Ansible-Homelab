# Playbook playbooks/storage/truenas/configure_routing.yml

Vorhandener Einstieg: `playbooks/storage/truenas/configure_routing.yml`.

Im Quelltext benannte Plays/Aufgaben:

- TrueNAS-Namenszuordnung pflegen
- Ausdrueckliches Ziel pruefen
- Feature pruefen
- Zielnamen und Zieladresse pruefen
- Verwalteten TrueNAS-Block pflegen

Ausfuehrung bevorzugt ueber den passenden Control-Befehl. Die Datei allein beschreibt nicht alle effektiven Variablen: Rollen, Inventar und lokale Standortkonfiguration wirken weiterhin. Keine allgemeinen --check-/Limit-Garantien daraus ableiten.


## Parameter und maschinenlesbarer Vertrag

Die Angaben stammen aus den aufgefuehrten Quellen. Fehlende Erklaerungen sind
als solche markiert. Defaults sind Hinweise und werden nicht automatisch gesetzt.
Vertrauliche Werte werden nicht dokumentiert.

```json
{
  "schema_version": 1,
  "kind": "playbook",
  "ref": "playbooks/storage/truenas/configure_routing.yml",
  "title": "Playbook playbooks/storage/truenas/configure_routing.yml",
  "documented": false,
  "fields": [],
  "constraints": [],
  "sources": [
    "playbooks/storage/truenas/configure_routing.yml"
  ],
  "source_hashes": {
    "playbooks/storage/truenas/configure_routing.yml": "375dd803655711c41aa4ece708868dfae63a209b51b03df20625a1ca8abb7274"
  }
}
```

## Quellen und Pflege

- `playbooks/storage/truenas/configure_routing.yml`

Diese Datei ist die Pflegequelle fuer Mensch und Add-on. Bei Codeaenderungen
Beschreibung und Quellhashs gemeinsam pruefen. Die Datenbank ist nur Cache.
