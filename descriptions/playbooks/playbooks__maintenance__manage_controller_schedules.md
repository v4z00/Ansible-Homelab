# Playbook playbooks/maintenance/manage_controller_schedules.yml

Vorhandener Einstieg: `playbooks/maintenance/manage_controller_schedules.yml`.

Im Quelltext benannte Plays/Aufgaben:

- Konfigurierte Controller-Cronjobs pflegen
- Feature pruefen
- Jobdefinitionen pruefen
- Nur benannte Ansible-Cronjobs pflegen
- Ansible {{ item.name }}

Ausfuehrung bevorzugt ueber den passenden Control-Befehl. Die Datei allein beschreibt nicht alle effektiven Variablen: Rollen, Inventar und lokale Standortkonfiguration wirken weiterhin. Keine allgemeinen --check-/Limit-Garantien daraus ableiten.


Der monatliche OpenWrt-Job kommt aus controller_schedules. Die Zeitplanverwaltung installiert dafür tmux.

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
    "playbooks/maintenance/manage_controller_schedules.yml": "20c374fddc162d748362aa3eb0a739dcc53d38a4c65c720d4404aff96b405d06"
  }
}
```

## Quellen und Pflege

- `playbooks/maintenance/manage_controller_schedules.yml`

Diese Datei ist die Pflegequelle fuer Mensch und Add-on. Bei Codeaenderungen
Beschreibung und Quellhashs gemeinsam pruefen. Die Datenbank ist nur Cache.
