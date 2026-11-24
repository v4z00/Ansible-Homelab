# Playbook playbooks/maintenance/manage_controller_schedules.yml

Vorhandener Einstieg: `playbooks/maintenance/manage_controller_schedules.yml`.

Im Quelltext benannte Plays/Aufgaben:

- Konfigurierte Controller-Cronjobs pflegen
- Feature pruefen
- Jobdefinitionen pruefen
- Nur benannte Ansible-Cronjobs pflegen
- Ansible {{ item.name }}

Ausfuehrung bevorzugt ueber den passenden Control-Befehl. Die Datei allein beschreibt nicht alle effektiven Variablen: Rollen, Inventar und lokale Standortkonfiguration wirken weiterhin. Keine allgemeinen --check-/Limit-Garantien daraus ableiten.


## Parameter und maschinenlesbarer Vertrag

Die Angaben stammen aus den aufgefuehrten Quellen. Fehlende Erklaerungen sind
als solche markiert. Defaults sind Hinweise und werden nicht automatisch gesetzt.
Vertrauliche Werte werden nicht dokumentiert.

```json
{
  "schema_version": 1,
  "kind": "playbook",
  "ref": "playbooks/maintenance/manage_controller_schedules.yml",
  "title": "Playbook playbooks/maintenance/manage_controller_schedules.yml",
  "documented": false,
  "fields": [],
  "constraints": [],
  "sources": [
    "playbooks/maintenance/manage_controller_schedules.yml"
  ],
  "source_hashes": {
    "playbooks/maintenance/manage_controller_schedules.yml": "939b44f02c4c8531a8e4f378285b78e749b07498a50fb4a30f6936cc5b6d365a"
  }
}
```

## Quellen und Pflege

- `playbooks/maintenance/manage_controller_schedules.yml`

Diese Datei ist die Pflegequelle fuer Mensch und Add-on. Bei Codeaenderungen
Beschreibung und Quellhashs gemeinsam pruefen. Die Datenbank ist nur Cache.
