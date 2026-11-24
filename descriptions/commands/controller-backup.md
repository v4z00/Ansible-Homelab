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
    "bin/control.d/controller-backup.sh": "97e4dae82f843db0c3739f384b9261a1be765c162f907a6b8b1cab201cef548f"
  }
}
```

## Quellen und Pflege

- `bin/control.d/controller-backup.json`
- `bin/control.d/controller-backup.sh`
- `lib/control/helpers.sh`

Diese Datei ist die Pflegequelle fuer Mensch und Add-on. Bei Codeaenderungen
Beschreibung und Quellhashs gemeinsam pruefen. Die Datenbank ist nur Cache.
