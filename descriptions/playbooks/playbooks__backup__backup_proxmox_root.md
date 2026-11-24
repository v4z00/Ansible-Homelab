# Playbook playbooks/backup/backup_proxmox_root.yml

Vorhandener Einstieg: `playbooks/backup/backup_proxmox_root.yml`.

Im Quelltext benannte Plays/Aufgaben:

- Proxmox root sichern
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
  "ref": "playbooks/backup/backup_proxmox_root.yml",
  "title": "Playbook playbooks/backup/backup_proxmox_root.yml",
  "documented": false,
  "fields": [],
  "constraints": [],
  "sources": [
    "playbooks/backup/backup_proxmox_root.yml"
  ],
  "source_hashes": {
    "playbooks/backup/backup_proxmox_root.yml": "4ca6309ca02383851b97e5940342dfc1706b44e0f2e0961f38db8a4ff11ffae1"
  }
}
```

## Quellen und Pflege

- `playbooks/backup/backup_proxmox_root.yml`

Diese Datei ist die Pflegequelle fuer Mensch und Add-on. Bei Codeaenderungen
Beschreibung und Quellhashs gemeinsam pruefen. Die Datenbank ist nur Cache.
