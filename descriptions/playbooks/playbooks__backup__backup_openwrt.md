# Playbook playbooks/backup/backup_openwrt.yml

Vorhandener Einstieg: `playbooks/backup/backup_openwrt.yml`.

Im Quelltext benannte Plays/Aufgaben:

- OpenWrt sichern
- Backup-Defaults und vorhandene lokale Variablen laden
- Backup-Funktion pruefen
- Backup-Ziel prüfen
- Lokalen Arbeitsordner anlegen
- Router sichern und Sicherung übernehmen
- Paketliste lesen
- Konfiguration direkt per SSH übertragen
- Paketliste lokal ablegen
- Sicherung prüfen und auf SMB übernehmen
- Lokalen Arbeitsordner entfernen

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
  },
  "i18n": {
    "de": {
      "title": "Playbook playbooks/backup/backup_openwrt.yml",
      "description": "# Playbook playbooks/backup/backup_openwrt.yml\n\nVorhandener Einstieg: `playbooks/backup/backup_openwrt.yml`.\n\nIm Quelltext benannte Plays/Aufgaben:\n\n- OpenWrt sichern\n- Backup-Defaults und vorhandene lokale Variablen laden\n- Backup-Funktion pruefen\n- Backup-Ziel prüfen\n- Lokalen Arbeitsordner anlegen\n- Router sichern und Sicherung übernehmen\n- Paketliste lesen\n- Konfiguration direkt per SSH übertragen\n- Paketliste lokal ablegen\n- Sicherung prüfen und auf SMB übernehmen\n- Lokalen Arbeitsordner entfernen\n\nAusfuehrung bevorzugt ueber den passenden Control-Befehl. Die Datei allein beschreibt nicht alle effektiven Variablen: Rollen, Inventar und lokale Standortkonfiguration wirken weiterhin. Keine allgemeinen --check-/Limit-Garantien daraus ableiten.\n\n\n## Parameter und maschinenlesbarer Vertrag\n\nDie Angaben stammen aus den aufgefuehrten Quellen. Fehlende Erklaerungen sind\nals solche markiert. Defaults sind Hinweise und werden nicht automatisch gesetzt.\nVertrauliche Werte werden nicht dokumentiert.\n\n## Quellen und Pflege\n\n- `playbooks/backup/backup_openwrt.yml`\n\nDiese Datei ist die Pflegequelle fuer Mensch und Add-on. Bei Codeaenderungen\nBeschreibung und Quellhashs gemeinsam pruefen. Die Datenbank ist nur Cache.",
      "fields": {}
    },
    "en": {
      "title": "Playbook playbooks/backup/backup_openwrt.yml",
      "description": "# Playbook playbooks/backup/backup_openwrt.yml\n\nPlaybook: `playbooks/backup/backup_openwrt.yml`.\n\nPlay and task names as written in the playbook:\n\n- OpenWrt sichern\n- Backup-Defaults und vorhandene lokale Variablen laden\n- Backup-Funktion pruefen\n- Backup-Ziel prüfen\n- Lokalen Arbeitsordner anlegen\n- Router sichern und Sicherung übernehmen\n- Paketliste lesen\n- Konfiguration direkt per SSH übertragen\n- Paketliste lokal ablegen\n- Sicherung prüfen und auf SMB übernehmen\n- Lokalen Arbeitsordner entfernen\n\nRun the corresponding Control command. Roles, inventory and site settings also affect this playbook. Check support for --limit and check mode before use.\n\n## Parameters\n\nThe listed sources define these parameters. Missing documentation is indicated. Defaults are informational. Credentials are omitted.\n\n## Sources and maintenance\n\n- `playbooks/backup/backup_openwrt.yml`\n\nMaintain this description and its source hashes together when the code changes. The database stores a cache.",
      "fields": {}
    }
  }
}
```

## Quellen und Pflege

- `playbooks/backup/backup_openwrt.yml`

Diese Datei ist die Pflegequelle fuer Mensch und Add-on. Bei Codeaenderungen
Beschreibung und Quellhashs gemeinsam pruefen. Die Datenbank ist nur Cache.
