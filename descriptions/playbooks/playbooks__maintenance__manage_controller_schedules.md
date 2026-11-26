# Playbook playbooks/maintenance/manage_controller_schedules.yml

Vorhandener Einstieg: `playbooks/maintenance/manage_controller_schedules.yml`.

Im Quelltext benannte Plays/Aufgaben:

- Konfigurierte Controller-Cronjobs pflegen
- Feature pruefen
- Jobdefinitionen pruefen
- tmux für konfigurierte OpenWrt-Neustarts bereitstellen
- Nur benannte Ansible-Cronjobs pflegen

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
  },
  "i18n": {
    "de": {
      "title": "Playbook playbooks/maintenance/manage_controller_schedules.yml",
      "description": "# Playbook playbooks/maintenance/manage_controller_schedules.yml\n\nVorhandener Einstieg: `playbooks/maintenance/manage_controller_schedules.yml`.\n\nIm Quelltext benannte Plays/Aufgaben:\n\n- Konfigurierte Controller-Cronjobs pflegen\n- Feature pruefen\n- Jobdefinitionen pruefen\n- tmux für konfigurierte OpenWrt-Neustarts bereitstellen\n- Nur benannte Ansible-Cronjobs pflegen\n\nAusfuehrung bevorzugt ueber den passenden Control-Befehl. Die Datei allein beschreibt nicht alle effektiven Variablen: Rollen, Inventar und lokale Standortkonfiguration wirken weiterhin. Keine allgemeinen --check-/Limit-Garantien daraus ableiten.\n\n\nDer monatliche OpenWrt-Job kommt aus controller_schedules. Die Zeitplanverwaltung installiert dafür tmux.\n\n## Parameter und maschinenlesbarer Vertrag\n\nDie Angaben stammen aus den aufgefuehrten Quellen. Fehlende Erklaerungen sind\nals solche markiert. Defaults sind Hinweise und werden nicht automatisch gesetzt.\nVertrauliche Werte werden nicht dokumentiert.\n\n## Quellen und Pflege\n\n- `playbooks/maintenance/manage_controller_schedules.yml`\n\nDiese Datei ist die Pflegequelle fuer Mensch und Add-on. Bei Codeaenderungen\nBeschreibung und Quellhashs gemeinsam pruefen. Die Datenbank ist nur Cache.",
      "fields": {}
    },
    "en": {
      "title": "Playbook playbooks/maintenance/manage_controller_schedules.yml",
      "description": "# Playbook playbooks/maintenance/manage_controller_schedules.yml\n\nPlaybook: `playbooks/maintenance/manage_controller_schedules.yml`.\n\nPlay and task names as written in the playbook:\n\n- Konfigurierte Controller-Cronjobs pflegen\n- Feature pruefen\n- Jobdefinitionen pruefen\n- tmux für konfigurierte OpenWrt-Neustarts bereitstellen\n- Nur benannte Ansible-Cronjobs pflegen\n\nRun the corresponding Control command. Roles, inventory and site settings also affect this playbook. Check support for --limit and check mode before use.\n\n`controller_schedules` defines the monthly OpenWrt job. Schedule management installs tmux for it.\n\n## Parameters\n\nThe listed sources define these parameters. Missing documentation is indicated. Defaults are informational. Credentials are omitted.\n\n## Sources and maintenance\n\n- `playbooks/maintenance/manage_controller_schedules.yml`\n\nMaintain this description and its source hashes together when the code changes. The database stores a cache.",
      "fields": {}
    }
  }
}
```

## Quellen und Pflege

- `playbooks/maintenance/manage_controller_schedules.yml`

Diese Datei ist die Pflegequelle fuer Mensch und Add-on. Bei Codeaenderungen
Beschreibung und Quellhashs gemeinsam pruefen. Die Datenbank ist nur Cache.
