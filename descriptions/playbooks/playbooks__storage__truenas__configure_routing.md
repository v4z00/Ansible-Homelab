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
    "playbooks/storage/truenas/configure_routing.yml": "99aa4fde8bca4fdaff8c24b3c5bd2467d9ed83261a5f7a17411a5502b2969b86"
  },
  "i18n": {
    "de": {
      "title": "Playbook playbooks/storage/truenas/configure_routing.yml",
      "description": "# Playbook playbooks/storage/truenas/configure_routing.yml\n\nVorhandener Einstieg: `playbooks/storage/truenas/configure_routing.yml`.\n\nIm Quelltext benannte Plays/Aufgaben:\n\n- TrueNAS-Namenszuordnung pflegen\n- Ausdrueckliches Ziel pruefen\n- Feature pruefen\n- Zielnamen und Zieladresse pruefen\n- Verwalteten TrueNAS-Block pflegen\n\nAusfuehrung bevorzugt ueber den passenden Control-Befehl. Die Datei allein beschreibt nicht alle effektiven Variablen: Rollen, Inventar und lokale Standortkonfiguration wirken weiterhin. Keine allgemeinen --check-/Limit-Garantien daraus ableiten.\n\n\n## Parameter und maschinenlesbarer Vertrag\n\nDie Angaben stammen aus den aufgefuehrten Quellen. Fehlende Erklaerungen sind\nals solche markiert. Defaults sind Hinweise und werden nicht automatisch gesetzt.\nVertrauliche Werte werden nicht dokumentiert.\n\n## Quellen und Pflege\n\n- `playbooks/storage/truenas/configure_routing.yml`\n\nDiese Datei ist die Pflegequelle fuer Mensch und Add-on. Bei Codeaenderungen\nBeschreibung und Quellhashs gemeinsam pruefen. Die Datenbank ist nur Cache.",
      "fields": {}
    },
    "en": {
      "title": "Playbook playbooks/storage/truenas/configure_routing.yml",
      "description": "# Playbook playbooks/storage/truenas/configure_routing.yml\n\nPlaybook: `playbooks/storage/truenas/configure_routing.yml`.\n\nPlay and task names as written in the playbook:\n\n- TrueNAS-Namenszuordnung pflegen\n- Ausdrueckliches Ziel pruefen\n- Feature pruefen\n- Zielnamen und Zieladresse pruefen\n- Verwalteten TrueNAS-Block pflegen\n\nRun the corresponding Control command. Roles, inventory and site settings also affect this playbook. Check support for --limit and check mode before use.\n\n## Parameters\n\nThe listed sources define these parameters. Missing documentation is indicated. Defaults are informational. Credentials are omitted.\n\n## Sources and maintenance\n\n- `playbooks/storage/truenas/configure_routing.yml`\n\nMaintain this description and its source hashes together when the code changes. The database stores a cache.",
      "fields": {}
    }
  }
}
```

## Quellen und Pflege

- `playbooks/storage/truenas/configure_routing.yml`

Diese Datei ist die Pflegequelle fuer Mensch und Add-on. Bei Codeaenderungen
Beschreibung und Quellhashs gemeinsam pruefen. Die Datenbank ist nur Cache.
