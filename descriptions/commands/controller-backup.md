# Ansible- und Docker-Konfiguration des Controllers sichern

Ansible- und Docker-Konfiguration des Controllers sichern

Aufruf: `bin/control controller-backup [Optionen]`.

Vorhandene Kurzformen: `controller-backup`.

Feature: backup. Die aktuelle Aktivierung prueft weiterhin Control.

Voraussetzungen laut Registry:
- `lib/control/helpers.sh`
- `playbooks/backup/backup_controller_configs.yml`

## Parameter und maschinenlesbarer Vertrag

Die Angaben stammen aus den aufgefuehrten Quellen. Fehlende Erklaerungen sind
als solche markiert. Defaults sind Hinweise und werden nicht automatisch gesetzt.
Vertrauliche Werte werden nicht dokumentiert.

```json
{
  "schema_version": 1,
  "kind": "command",
  "ref": "controller-backup",
  "title": "Ansible- und Docker-Konfiguration des Controllers sichern",
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
    "bin/control.d/controller-backup.json",
    "bin/control.d/controller-backup.sh",
    "lib/control/helpers.sh"
  ],
  "source_hashes": {
    "bin/control.d/controller-backup.json": "d7a858a2874d8162599e80ae62530131d1001c2de45ae2112e4aef6624149551",
    "bin/control.d/controller-backup.sh": "97e4dae82f843db0c3739f384b9261a1be765c162f907a6b8b1cab201cef548f",
    "lib/control/helpers.sh": "71898aff95dfffd6873a1e6c4f90e3bdce23c25f6eed0df640dde87afd3bc19e"
  },
  "i18n": {
    "de": {
      "title": "Ansible- und Docker-Konfiguration des Controllers sichern",
      "description": "# Ansible- und Docker-Konfiguration des Controllers sichern\n\nAnsible- und Docker-Konfiguration des Controllers sichern\n\nAufruf: `bin/control controller-backup [Optionen]`.\n\nVorhandene Kurzformen: `controller-backup`.\n\nFeature: backup. Die aktuelle Aktivierung prueft weiterhin Control.\n\nVoraussetzungen laut Registry:\n- `lib/control/helpers.sh`\n- `playbooks/backup/backup_controller_configs.yml`\n\n## Parameter und maschinenlesbarer Vertrag\n\nDie Angaben stammen aus den aufgefuehrten Quellen. Fehlende Erklaerungen sind\nals solche markiert. Defaults sind Hinweise und werden nicht automatisch gesetzt.\nVertrauliche Werte werden nicht dokumentiert.\n\n## Quellen und Pflege\n\n- `bin/control.d/controller-backup.json`\n- `bin/control.d/controller-backup.sh`\n- `lib/control/helpers.sh`\n\nDiese Datei ist die Pflegequelle fuer Mensch und Add-on. Bei Codeaenderungen\nBeschreibung und Quellhashs gemeinsam pruefen. Die Datenbank ist nur Cache.",
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
      "title": "Back up the controller’s Ansible and Docker configuration",
      "description": "# Back up the controller’s Ansible and Docker configuration\n\nBack up the controller’s Ansible and Docker configuration\n\nRun: `bin/control controller-backup [options]`.\n\nAliases: `controller-backup`.\n\nFeature: backup. Control checks availability at runtime.\n\nRegistry prerequisites:\n- `lib/control/helpers.sh`\n- `playbooks/backup/backup_controller_configs.yml`\n\n## Parameters\n\nThe listed sources define these parameters. Missing documentation is indicated. Defaults are informational. Credentials are omitted.\n\n## Sources and maintenance\n\n- `bin/control.d/controller-backup.json`\n- `bin/control.d/controller-backup.sh`\n- `lib/control/helpers.sh`\n\nMaintain this description and its source hashes together when the code changes. The database stores a cache.",
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

- `bin/control.d/controller-backup.json`
- `bin/control.d/controller-backup.sh`
- `lib/control/helpers.sh`

Diese Datei ist die Pflegequelle fuer Mensch und Add-on. Bei Codeaenderungen
Beschreibung und Quellhashs gemeinsam pruefen. Die Datenbank ist nur Cache.
