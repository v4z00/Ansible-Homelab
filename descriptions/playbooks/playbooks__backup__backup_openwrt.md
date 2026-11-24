# Playbook playbooks/backup/backup_openwrt.yml

Vorhandener Einstieg: `playbooks/backup/backup_openwrt.yml`.

Im Quelltext benannte Plays/Aufgaben:

- OpenWrt sichern
- Backup-Ziel prüfen
- Lokalen Arbeitsordner anlegen
- Router sichern und Sicherung übernehmen
- Paketliste lesen
- Konfiguration direkt per SSH übertragen
- Paketliste lokal ablegen
- Sicherung prüfen und auf SMB übernehmen
- Lokalen Arbeitsordner entfernen
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
  "ref": "playbooks/backup/backup_openwrt.yml",
  "title": "Playbook playbooks/backup/backup_openwrt.yml",
  "documented": false,
  "fields": [],
  "constraints": [],
  "sources": [
    "playbooks/backup/backup_openwrt.yml"
  ],
  "source_hashes": {
    "playbooks/backup/backup_openwrt.yml": "337d239b34a66e0197badd6cc099b46f78d269fd8acc081889f1d6817a9e0147"
  }
}
```

## Quellen und Pflege

- `playbooks/backup/backup_openwrt.yml`

Diese Datei ist die Pflegequelle fuer Mensch und Add-on. Bei Codeaenderungen
Beschreibung und Quellhashs gemeinsam pruefen. Die Datenbank ist nur Cache.
