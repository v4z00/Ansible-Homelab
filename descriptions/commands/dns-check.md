# DNS-Aufloesung pruefen

Im Homelab läuft zusätzlich die OpenWrt-Prüfung, sobald der Befehl `openwrt-health` im Controller aktiviert ist.

DNS-Aufloesung pruefen

Aufruf: `bin/control dns-check [Optionen]`.

Vorhandene Kurzformen: `check-dns`, `dns-check`.

Feature: kein zusaetzlicher Feature-Schalter. Die aktuelle Aktivierung prueft weiterhin Control.

Voraussetzungen laut Registry:
- `lib/control/helpers.sh`
- `playbooks/maintenance/check-dns.yml`

## Parameter und maschinenlesbarer Vertrag

Die Angaben stammen aus den aufgefuehrten Quellen. Fehlende Erklaerungen sind
als solche markiert. Defaults sind Hinweise und werden nicht automatisch gesetzt.
Vertrauliche Werte werden nicht dokumentiert.

```json
{
  "schema_version": 1,
  "kind": "command",
  "ref": "dns-check",
  "title": "DNS-Aufloesung pruefen",
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
    "bin/control.d/dns-check.json",
    "bin/control.d/dns-check.sh",
    "lib/control/helpers.sh"
  ],
  "source_hashes": {
    "bin/control.d/dns-check.json": "6ed6411af62eb4cfa6700a8cf9e0f5faa1077e14c1033dd4532b5a9bbf3116fc",
    "bin/control.d/dns-check.sh": "c7bd81c741577316f803243529b6b4d1e6b9b5092005ffc88f3703491af41ad9",
    "lib/control/helpers.sh": "71898aff95dfffd6873a1e6c4f90e3bdce23c25f6eed0df640dde87afd3bc19e"
  }
}
```

## Quellen und Pflege

- `bin/control.d/dns-check.json`
- `bin/control.d/dns-check.sh`
- `lib/control/helpers.sh`

Diese Datei ist die Pflegequelle fuer Mensch und Add-on. Bei Codeaenderungen
Beschreibung und Quellhashs gemeinsam pruefen. Die Datenbank ist nur Cache.
