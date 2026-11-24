# Konfigurationsreferenz examples/homelab/settings.example.yml

Diese Angaben beschreiben ausschliesslich die vorliegende Vorlagen-/Beispieldatei, nicht die effektiven Werte eines laufenden Hosts.

Die Datei wird durch diese Dokumentation weder aktiviert noch in bestehende Standortkonfigurationen kopiert.

## Parameter und maschinenlesbarer Vertrag

Die Angaben stammen aus den aufgefuehrten Quellen. Fehlende Erklaerungen sind
als solche markiert. Defaults sind Hinweise und werden nicht automatisch gesetzt.
Vertrauliche Werte werden nicht dokumentiert.

```json
{
  "schema_version": 1,
  "kind": "configuration",
  "ref": "examples/homelab/settings.example.yml",
  "title": "Konfigurationsreferenz examples/homelab/settings.example.yml",
  "documented": false,
  "fields": [
    {
      "id": "features.openwrt",
      "label": "features.openwrt",
      "description": "Vorhandene Konfigurationsoption aus examples/homelab/settings.example.yml. Standortwerte bleiben lokal; kein automatisches Setzen.",
      "type": "boolean",
      "required": false,
      "sensitive": false,
      "default": false
    },
    {
      "id": "features.truenas",
      "label": "features.truenas",
      "description": "Vorhandene Konfigurationsoption aus examples/homelab/settings.example.yml. Standortwerte bleiben lokal; kein automatisches Setzen.",
      "type": "boolean",
      "required": false,
      "sensitive": false,
      "default": false
    },
    {
      "id": "features.zsh",
      "label": "features.zsh",
      "description": "Vorhandene Konfigurationsoption aus examples/homelab/settings.example.yml. Standortwerte bleiben lokal; kein automatisches Setzen.",
      "type": "boolean",
      "required": false,
      "sensitive": false,
      "default": false
    },
    {
      "id": "features.backup",
      "label": "features.backup",
      "description": "Vorhandene Konfigurationsoption aus examples/homelab/settings.example.yml. Standortwerte bleiben lokal; kein automatisches Setzen.",
      "type": "boolean",
      "required": false,
      "sensitive": false,
      "default": false
    },
    {
      "id": "features.schedules",
      "label": "features.schedules",
      "description": "Vorhandene Konfigurationsoption aus examples/homelab/settings.example.yml. Standortwerte bleiben lokal; kein automatisches Setzen.",
      "type": "boolean",
      "required": false,
      "sensitive": false,
      "default": false
    },
    {
      "id": "truenas_hostname",
      "label": "truenas_hostname",
      "description": "Vorhandene Konfigurationsoption aus examples/homelab/settings.example.yml. Standortwerte bleiben lokal; kein automatisches Setzen.",
      "type": "string",
      "required": false,
      "sensitive": false,
      "default": "storage.example.invalid"
    },
    {
      "id": "truenas_override_ip",
      "label": "truenas_override_ip",
      "description": "Vorhandene Konfigurationsoption aus examples/homelab/settings.example.yml. Standortwerte bleiben lokal; kein automatisches Setzen.",
      "type": "string",
      "required": false,
      "sensitive": false,
      "default": ""
    },
    {
      "id": "zfs_property_settings",
      "label": "zfs_property_settings",
      "description": "Vorhandene Konfigurationsoption aus examples/homelab/settings.example.yml. Standortwerte bleiben lokal; kein automatisches Setzen.",
      "type": "string",
      "required": false,
      "sensitive": false,
      "resolution": "strukturierter oder dynamischer Wert; keine Kopie von Standortdaten"
    },
    {
      "id": "controller_schedules",
      "label": "controller_schedules",
      "description": "Vorhandene Konfigurationsoption aus examples/homelab/settings.example.yml. Standortwerte bleiben lokal; kein automatisches Setzen.",
      "type": "string",
      "required": false,
      "sensitive": false,
      "resolution": "strukturierter oder dynamischer Wert; keine Kopie von Standortdaten"
    },
    {
      "id": "controller_notification_command",
      "label": "controller_notification_command",
      "description": "Vorhandene Konfigurationsoption aus examples/homelab/settings.example.yml. Standortwerte bleiben lokal; kein automatisches Setzen.",
      "type": "string",
      "required": false,
      "sensitive": false,
      "resolution": "strukturierter oder dynamischer Wert; keine Kopie von Standortdaten"
    }
  ],
  "constraints": [],
  "sources": [
    "examples/homelab/settings.example.yml"
  ],
  "source_hashes": {
    "examples/homelab/settings.example.yml": "1bf965cbf7fa7f15d14de5fb242e2ca6fb0e3b845ec0486bc0f383e23be9118f"
  }
}
```

## Quellen und Pflege

- `examples/homelab/settings.example.yml`

Diese Datei ist die Pflegequelle fuer Mensch und Add-on. Bei Codeaenderungen
Beschreibung und Quellhashs gemeinsam pruefen. Die Datenbank ist nur Cache.
