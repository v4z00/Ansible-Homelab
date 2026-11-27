# Configuration reference for examples/homelab/settings.example.yml

This reference describes the example file. Effective host values depend on local settings.

This reference does not activate the example or copy it into an existing site configuration.

## Parameters

The listed sources define these parameters. Missing documentation is indicated. Defaults are informational. Credentials are omitted.

## Sources and maintenance

- `examples/homelab/settings.example.yml`

Maintain this description and its source hashes together when the code changes. The database stores a cache.

<details>
<summary>Deutsch</summary>

# Konfigurationsreferenz examples/homelab/settings.example.yml

Diese Angaben beschreiben ausschliesslich die vorliegende Vorlagen-/Beispieldatei, nicht die effektiven Werte eines laufenden Hosts.

Die Datei wird durch diese Dokumentation weder aktiviert noch in bestehende Standortkonfigurationen kopiert.

## Parameter und maschinenlesbarer Vertrag

Die Angaben stammen aus den aufgefuehrten Quellen. Fehlende Erklaerungen sind
als solche markiert. Defaults sind Hinweise und werden nicht automatisch gesetzt.
Vertrauliche Werte werden nicht dokumentiert.

## Quellen und Pflege

- `examples/homelab/settings.example.yml`

Diese Datei ist die Pflegequelle fuer Mensch und Add-on. Bei Codeaenderungen
Beschreibung und Quellhashs gemeinsam pruefen. Die Datenbank ist nur Cache.

</details>

<details>
<summary>Catalog metadata (JSON)</summary>

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
    "examples/homelab/settings.example.yml": "b2a2466fbc36f8aaf1bc24b59cff3fcb42825f137dd0fc2c392c5b4a5135fddb"
  },
  "i18n": {
    "de": {
      "title": "Konfigurationsreferenz examples/homelab/settings.example.yml",
      "description": "# Konfigurationsreferenz examples/homelab/settings.example.yml\n\nDiese Angaben beschreiben ausschliesslich die vorliegende Vorlagen-/Beispieldatei, nicht die effektiven Werte eines laufenden Hosts.\n\nDie Datei wird durch diese Dokumentation weder aktiviert noch in bestehende Standortkonfigurationen kopiert.\n\n## Parameter und maschinenlesbarer Vertrag\n\nDie Angaben stammen aus den aufgefuehrten Quellen. Fehlende Erklaerungen sind\nals solche markiert. Defaults sind Hinweise und werden nicht automatisch gesetzt.\nVertrauliche Werte werden nicht dokumentiert.\n\n## Quellen und Pflege\n\n- `examples/homelab/settings.example.yml`\n\nDiese Datei ist die Pflegequelle fuer Mensch und Add-on. Bei Codeaenderungen\nBeschreibung und Quellhashs gemeinsam pruefen. Die Datenbank ist nur Cache.",
      "fields": {
        "features.openwrt": {
          "label": "features.openwrt",
          "description": "Vorhandene Konfigurationsoption aus examples/homelab/settings.example.yml. Standortwerte bleiben lokal; kein automatisches Setzen."
        },
        "features.truenas": {
          "label": "features.truenas",
          "description": "Vorhandene Konfigurationsoption aus examples/homelab/settings.example.yml. Standortwerte bleiben lokal; kein automatisches Setzen."
        },
        "features.zsh": {
          "label": "features.zsh",
          "description": "Vorhandene Konfigurationsoption aus examples/homelab/settings.example.yml. Standortwerte bleiben lokal; kein automatisches Setzen."
        },
        "features.backup": {
          "label": "features.backup",
          "description": "Vorhandene Konfigurationsoption aus examples/homelab/settings.example.yml. Standortwerte bleiben lokal; kein automatisches Setzen."
        },
        "features.schedules": {
          "label": "features.schedules",
          "description": "Vorhandene Konfigurationsoption aus examples/homelab/settings.example.yml. Standortwerte bleiben lokal; kein automatisches Setzen."
        },
        "truenas_hostname": {
          "label": "truenas_hostname",
          "description": "Vorhandene Konfigurationsoption aus examples/homelab/settings.example.yml. Standortwerte bleiben lokal; kein automatisches Setzen."
        },
        "truenas_override_ip": {
          "label": "truenas_override_ip",
          "description": "Vorhandene Konfigurationsoption aus examples/homelab/settings.example.yml. Standortwerte bleiben lokal; kein automatisches Setzen."
        },
        "zfs_property_settings": {
          "label": "zfs_property_settings",
          "description": "Vorhandene Konfigurationsoption aus examples/homelab/settings.example.yml. Standortwerte bleiben lokal; kein automatisches Setzen."
        },
        "controller_schedules": {
          "label": "controller_schedules",
          "description": "Vorhandene Konfigurationsoption aus examples/homelab/settings.example.yml. Standortwerte bleiben lokal; kein automatisches Setzen."
        },
        "controller_notification_command": {
          "label": "controller_notification_command",
          "description": "Vorhandene Konfigurationsoption aus examples/homelab/settings.example.yml. Standortwerte bleiben lokal; kein automatisches Setzen."
        }
      }
    },
    "en": {
      "title": "Configuration reference for examples/homelab/settings.example.yml",
      "description": "# Configuration reference for examples/homelab/settings.example.yml\n\nThis reference describes the example file. Effective host values depend on local settings.\n\nThis reference does not activate the example or copy it into an existing site configuration.\n\n## Parameters\n\nThe listed sources define these parameters. Missing documentation is indicated. Defaults are informational. Credentials are omitted.\n\n## Sources and maintenance\n\n- `examples/homelab/settings.example.yml`\n\nMaintain this description and its source hashes together when the code changes. The database stores a cache.",
      "fields": {
        "features.openwrt": {
          "label": "features.openwrt",
          "description": "Configuration option from examples/homelab/settings.example.yml. The site sets the actual value locally."
        },
        "features.truenas": {
          "label": "features.truenas",
          "description": "Configuration option from examples/homelab/settings.example.yml. The site sets the actual value locally."
        },
        "features.zsh": {
          "label": "features.zsh",
          "description": "Configuration option from examples/homelab/settings.example.yml. The site sets the actual value locally."
        },
        "features.backup": {
          "label": "features.backup",
          "description": "Configuration option from examples/homelab/settings.example.yml. The site sets the actual value locally."
        },
        "features.schedules": {
          "label": "features.schedules",
          "description": "Configuration option from examples/homelab/settings.example.yml. The site sets the actual value locally."
        },
        "truenas_hostname": {
          "label": "truenas_hostname",
          "description": "Configuration option from examples/homelab/settings.example.yml. The site sets the actual value locally."
        },
        "truenas_override_ip": {
          "label": "truenas_override_ip",
          "description": "Configuration option from examples/homelab/settings.example.yml. The site sets the actual value locally."
        },
        "zfs_property_settings": {
          "label": "zfs_property_settings",
          "description": "Configuration option from examples/homelab/settings.example.yml. The site sets the actual value locally."
        },
        "controller_schedules": {
          "label": "controller_schedules",
          "description": "Configuration option from examples/homelab/settings.example.yml. The site sets the actual value locally."
        },
        "controller_notification_command": {
          "label": "controller_notification_command",
          "description": "Configuration option from examples/homelab/settings.example.yml. The site sets the actual value locally."
        }
      }
    }
  }
}
```

</details>
