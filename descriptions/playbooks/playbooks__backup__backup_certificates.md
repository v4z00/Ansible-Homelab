# Playbook playbooks/backup/backup_certificates.yml

Vorhandener Einstieg: `playbooks/backup/backup_certificates.yml`.

Im Quelltext benannte Plays/Aufgaben:

- Zertifikatsdateien sichern
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
  "ref": "playbooks/backup/backup_certificates.yml",
  "title": "Playbook playbooks/backup/backup_certificates.yml",
  "documented": false,
  "fields": [],
  "constraints": [],
  "sources": [
    "playbooks/backup/backup_certificates.yml"
  ],
  "source_hashes": {
    "playbooks/backup/backup_certificates.yml": "471c2d00424eb9d0103f925cde57b6ee1a04ffd995ca2a706d25f4f839e46cf6"
  }
}
```

## Quellen und Pflege

- `playbooks/backup/backup_certificates.yml`

Diese Datei ist die Pflegequelle fuer Mensch und Add-on. Bei Codeaenderungen
Beschreibung und Quellhashs gemeinsam pruefen. Die Datenbank ist nur Cache.
