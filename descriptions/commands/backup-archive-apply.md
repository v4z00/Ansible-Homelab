# Archive old automatic backups

Archive old automatic backups

Run: `bin/control backup-archive-apply [options]`.

Aliases: `backup-archive-apply`.

Feature: backup. Control checks availability at runtime.

Registry prerequisites:
- `lib/control/helpers.sh`
- `playbooks/backup/archive_legacy.yml`

## Parameters

The listed sources define these parameters. Missing documentation is indicated. Defaults are informational. Credentials are omitted.

## Sources and maintenance

- `bin/control.d/backup-archive-apply.json`
- `bin/control.d/backup-archive-apply.sh`
- `lib/control/helpers.sh`

Maintain this description and its source hashes together when the code changes. The database stores a cache.

<details>
<summary>Deutsch</summary>

# Alte automatische Backups archivieren

Alte automatische Backups archivieren

Aufruf: `bin/control backup-archive-apply [Optionen]`.

Vorhandene Kurzformen: `backup-archive-apply`.

Feature: backup. Die aktuelle Aktivierung prueft weiterhin Control.

Voraussetzungen laut Registry:
- `lib/control/helpers.sh`
- `playbooks/backup/archive_legacy.yml`

## Parameter und maschinenlesbarer Vertrag

Die Angaben stammen aus den aufgefuehrten Quellen. Fehlende Erklaerungen sind
als solche markiert. Defaults sind Hinweise und werden nicht automatisch gesetzt.
Vertrauliche Werte werden nicht dokumentiert.

## Quellen und Pflege

- `bin/control.d/backup-archive-apply.json`
- `bin/control.d/backup-archive-apply.sh`
- `lib/control/helpers.sh`

Diese Datei ist die Pflegequelle fuer Mensch und Add-on. Bei Codeaenderungen
Beschreibung und Quellhashs gemeinsam pruefen. Die Datenbank ist nur Cache.

</details>

<details>
<summary>Catalog metadata (JSON)</summary>

```json
{
  "schema_version": 1,
  "kind": "command",
  "ref": "backup-archive-apply",
  "title": "Alte automatische Backups archivieren",
  "documented": true,
  "fields": [
    {
      "id": "targets",
      "label": "targets",
      "description": "Inventory-Hosts/-Gruppen als Ansible --limit. Fachliche Pruefungen bleiben aktiv.",
      "type": "array",
      "required": false,
      "sensitive": false,
      "binding": {
        "kind": "option",
        "name": "--limit",
        "separator": ","
      },
      "completion": {
        "source": "inventory.targets"
      }
    },
    {
      "id": "check",
      "label": "check",
      "description": "Ansible-Check-Mode anfordern. Ob Aktionen diesen vollstaendig unterstuetzen, bestimmt das Playbook.",
      "type": "boolean",
      "required": false,
      "sensitive": false,
      "binding": {
        "kind": "flag",
        "name": "--check"
      }
    }
  ],
  "constraints": [],
  "sources": [
    "bin/control.d/backup-archive-apply.json",
    "bin/control.d/backup-archive-apply.sh",
    "lib/control/helpers.sh"
  ],
  "source_hashes": {
    "bin/control.d/backup-archive-apply.json": "6c8e9d3ae6be552cd4fc6bad30054c65b367194641f3007ab06f7306bda01aa3",
    "bin/control.d/backup-archive-apply.sh": "12353c3576d0881cf70e4ac0ef466e1342e57377805bc795205eddd3391b0e44",
    "lib/control/helpers.sh": "71898aff95dfffd6873a1e6c4f90e3bdce23c25f6eed0df640dde87afd3bc19e"
  },
  "i18n": {
    "de": {
      "title": "Alte automatische Backups archivieren",
      "description": "# Alte automatische Backups archivieren\n\nAlte automatische Backups archivieren\n\nAufruf: `bin/control backup-archive-apply [Optionen]`.\n\nVorhandene Kurzformen: `backup-archive-apply`.\n\nFeature: backup. Die aktuelle Aktivierung prueft weiterhin Control.\n\nVoraussetzungen laut Registry:\n- `lib/control/helpers.sh`\n- `playbooks/backup/archive_legacy.yml`\n\n## Parameter und maschinenlesbarer Vertrag\n\nDie Angaben stammen aus den aufgefuehrten Quellen. Fehlende Erklaerungen sind\nals solche markiert. Defaults sind Hinweise und werden nicht automatisch gesetzt.\nVertrauliche Werte werden nicht dokumentiert.\n\n## Quellen und Pflege\n\n- `bin/control.d/backup-archive-apply.json`\n- `bin/control.d/backup-archive-apply.sh`\n- `lib/control/helpers.sh`\n\nDiese Datei ist die Pflegequelle fuer Mensch und Add-on. Bei Codeaenderungen\nBeschreibung und Quellhashs gemeinsam pruefen. Die Datenbank ist nur Cache.",
      "fields": {
        "targets": {
          "label": "targets",
          "description": "Inventory-Hosts/-Gruppen als Ansible --limit. Fachliche Pruefungen bleiben aktiv."
        },
        "check": {
          "label": "check",
          "description": "Ansible-Check-Mode anfordern. Ob Aktionen diesen vollstaendig unterstuetzen, bestimmt das Playbook."
        }
      }
    },
    "en": {
      "title": "Archive old automatic backups",
      "description": "# Archive old automatic backups\n\nArchive old automatic backups\n\nRun: `bin/control backup-archive-apply [options]`.\n\nAliases: `backup-archive-apply`.\n\nFeature: backup. Control checks availability at runtime.\n\nRegistry prerequisites:\n- `lib/control/helpers.sh`\n- `playbooks/backup/archive_legacy.yml`\n\n## Parameters\n\nThe listed sources define these parameters. Missing documentation is indicated. Defaults are informational. Credentials are omitted.\n\n## Sources and maintenance\n\n- `bin/control.d/backup-archive-apply.json`\n- `bin/control.d/backup-archive-apply.sh`\n- `lib/control/helpers.sh`\n\nMaintain this description and its source hashes together when the code changes. The database stores a cache.",
      "fields": {
        "targets": {
          "label": "Target hosts or groups",
          "description": "Limit Ansible to the selected inventory hosts or groups. The playbook still applies its own checks."
        },
        "check": {
          "label": "Check mode",
          "description": "Request Ansible check mode. Coverage depends on the playbook."
        }
      }
    }
  }
}
```

</details>
