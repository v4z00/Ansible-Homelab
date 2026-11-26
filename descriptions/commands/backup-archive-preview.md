# Alte automatische Backups nur auflisten

Alte automatische Backups nur auflisten

Aufruf: `bin/control backup-archive-preview [Optionen]`.

Vorhandene Kurzformen: `backup-archive-preview`.

Feature: backup. Die aktuelle Aktivierung prueft weiterhin Control.

Voraussetzungen laut Registry:
- `lib/control/helpers.sh`
- `playbooks/backup/archive_legacy.yml`

## Parameter und maschinenlesbarer Vertrag

Die Angaben stammen aus den aufgefuehrten Quellen. Fehlende Erklaerungen sind
als solche markiert. Defaults sind Hinweise und werden nicht automatisch gesetzt.
Vertrauliche Werte werden nicht dokumentiert.

```json
{
  "schema_version": 1,
  "kind": "command",
  "ref": "backup-archive-preview",
  "title": "Alte automatische Backups nur auflisten",
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
    "bin/control.d/backup-archive-preview.json",
    "bin/control.d/backup-archive-preview.sh",
    "lib/control/helpers.sh"
  ],
  "source_hashes": {
    "bin/control.d/backup-archive-preview.json": "1d3034c0c30b14c185d22676c89b2aacdb4aefa4ad63f92b52a45605eab2fff7",
    "bin/control.d/backup-archive-preview.sh": "81a5745856135bf8023825681066b5a6b9c8366658dc680796c8530555fa64a4",
    "lib/control/helpers.sh": "71898aff95dfffd6873a1e6c4f90e3bdce23c25f6eed0df640dde87afd3bc19e"
  },
  "i18n": {
    "de": {
      "title": "Alte automatische Backups nur auflisten",
      "description": "# Alte automatische Backups nur auflisten\n\nAlte automatische Backups nur auflisten\n\nAufruf: `bin/control backup-archive-preview [Optionen]`.\n\nVorhandene Kurzformen: `backup-archive-preview`.\n\nFeature: backup. Die aktuelle Aktivierung prueft weiterhin Control.\n\nVoraussetzungen laut Registry:\n- `lib/control/helpers.sh`\n- `playbooks/backup/archive_legacy.yml`\n\n## Parameter und maschinenlesbarer Vertrag\n\nDie Angaben stammen aus den aufgefuehrten Quellen. Fehlende Erklaerungen sind\nals solche markiert. Defaults sind Hinweise und werden nicht automatisch gesetzt.\nVertrauliche Werte werden nicht dokumentiert.\n\n## Quellen und Pflege\n\n- `bin/control.d/backup-archive-preview.json`\n- `bin/control.d/backup-archive-preview.sh`\n- `lib/control/helpers.sh`\n\nDiese Datei ist die Pflegequelle fuer Mensch und Add-on. Bei Codeaenderungen\nBeschreibung und Quellhashs gemeinsam pruefen. Die Datenbank ist nur Cache.",
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
      "title": "List old automatic backups",
      "description": "# List old automatic backups\n\nList old automatic backups\n\nRun: `bin/control backup-archive-preview [options]`.\n\nAliases: `backup-archive-preview`.\n\nFeature: backup. Control checks availability at runtime.\n\nRegistry prerequisites:\n- `lib/control/helpers.sh`\n- `playbooks/backup/archive_legacy.yml`\n\n## Parameters\n\nThe listed sources define these parameters. Missing documentation is indicated. Defaults are informational. Credentials are omitted.\n\n## Sources and maintenance\n\n- `bin/control.d/backup-archive-preview.json`\n- `bin/control.d/backup-archive-preview.sh`\n- `lib/control/helpers.sh`\n\nMaintain this description and its source hashes together when the code changes. The database stores a cache.",
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

## Quellen und Pflege

- `bin/control.d/backup-archive-preview.json`
- `bin/control.d/backup-archive-preview.sh`
- `lib/control/helpers.sh`

Diese Datei ist die Pflegequelle fuer Mensch und Add-on. Bei Codeaenderungen
Beschreibung und Quellhashs gemeinsam pruefen. Die Datenbank ist nur Cache.
