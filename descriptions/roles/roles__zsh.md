# Rolle zsh

Rolle: `roles/zsh`.

Im Bestand definierte Aufgaben:

- Zsh-Pakete installieren
- Oh My Zsh unbeaufsichtigt installieren
- Powerlevel10k installieren
- Zsh-Konfiguration ausrollen
- Powerlevel10k-Konfiguration ausrollen
- Zsh als Standard-Shell setzen

Die Parameterliste beschreibt vorhandene oeffentliche Defaults. Task-interne Fakten, Registerwerte und Hostsecrets werden nicht in Eingabeparameter umgedeutet.


## Parameter und maschinenlesbarer Vertrag

Die Angaben stammen aus den aufgefuehrten Quellen. Fehlende Erklaerungen sind
als solche markiert. Defaults sind Hinweise und werden nicht automatisch gesetzt.
Vertrauliche Werte werden nicht dokumentiert.

```json
{
  "schema_version": 1,
  "kind": "role",
  "ref": "roles/zsh",
  "title": "Rolle zsh",
  "documented": false,
  "fields": [
    {
      "id": "zsh_target_user",
      "label": "zsh_target_user",
      "description": "Rollen-Default; Bedeutung ueber die aufgefuehrten Tasks pruefen. Keine eigene Feldbeschreibung im Bestand.",
      "type": "string",
      "required": false,
      "sensitive": false,
      "default": "root"
    },
    {
      "id": "zsh_target_home",
      "label": "zsh_target_home",
      "description": "Rollen-Default; Bedeutung ueber die aufgefuehrten Tasks pruefen. Keine eigene Feldbeschreibung im Bestand.",
      "type": "string",
      "required": false,
      "sensitive": false,
      "default": "/root"
    },
    {
      "id": "zsh_oh_my_zsh_install_url",
      "label": "zsh_oh_my_zsh_install_url",
      "description": "Rollen-Default; Bedeutung ueber die aufgefuehrten Tasks pruefen. Keine eigene Feldbeschreibung im Bestand.",
      "type": "string",
      "required": false,
      "sensitive": false,
      "default": "https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh"
    },
    {
      "id": "zsh_powerlevel10k_repo",
      "label": "zsh_powerlevel10k_repo",
      "description": "Rollen-Default; Bedeutung ueber die aufgefuehrten Tasks pruefen. Keine eigene Feldbeschreibung im Bestand.",
      "type": "string",
      "required": false,
      "sensitive": false,
      "default": "https://github.com/romkatv/powerlevel10k.git"
    }
  ],
  "constraints": [],
  "sources": [
    "roles/zsh/tasks/main.yml",
    "roles/zsh/defaults/main.yml"
  ],
  "source_hashes": {
    "roles/zsh/defaults/main.yml": "0cc206d027ab493b0fe9d91f7b1be68b8ab9d40aa91bb848f2d17ca8990174c8",
    "roles/zsh/tasks/main.yml": "ff58fc7d379351b666e9b3572553cbe2f40a5b99f1799aad922d86a322393924"
  },
  "i18n": {
    "de": {
      "title": "Rolle zsh",
      "description": "# Rolle zsh\n\nRolle: `roles/zsh`.\n\nIm Bestand definierte Aufgaben:\n\n- Zsh-Pakete installieren\n- Oh My Zsh unbeaufsichtigt installieren\n- Powerlevel10k installieren\n- Zsh-Konfiguration ausrollen\n- Powerlevel10k-Konfiguration ausrollen\n- Zsh als Standard-Shell setzen\n\nDie Parameterliste beschreibt vorhandene oeffentliche Defaults. Task-interne Fakten, Registerwerte und Hostsecrets werden nicht in Eingabeparameter umgedeutet.\n\n\n## Parameter und maschinenlesbarer Vertrag\n\nDie Angaben stammen aus den aufgefuehrten Quellen. Fehlende Erklaerungen sind\nals solche markiert. Defaults sind Hinweise und werden nicht automatisch gesetzt.\nVertrauliche Werte werden nicht dokumentiert.\n\n## Quellen und Pflege\n\n- `roles/zsh/tasks/main.yml`\n- `roles/zsh/defaults/main.yml`\n\nDiese Datei ist die Pflegequelle fuer Mensch und Add-on. Bei Codeaenderungen\nBeschreibung und Quellhashs gemeinsam pruefen. Die Datenbank ist nur Cache.\n\n\n## TLS-Zertifikatspruefung pro Aufgabe (1.1.0)\n\nOptionale Eintraege unter `tls_validate_certs` in `group_vars/all/settings.yml`.\nFehlende Eintraege erben tls_validate_certs_default (ohne Standortstandard true); explizites false deaktiviert nur die genannte Pruefung.\n- `tls_validate_certs.zsh_installer_download`: Oh My Zsh laden (Standard true).\n- `tls_validate_certs.zsh_theme_clone`: Powerlevel10k klonen (Standard true).\n\nStandortstandard: tls_validate_certs_default (ohne Eintrag true). Telegram-Aufgaben\nverwenden unabhaengig davon true als Default, ausser bei explizitem Task-Override.",
      "fields": {
        "zsh_target_user": {
          "label": "zsh_target_user",
          "description": "Rollen-Default; Bedeutung ueber die aufgefuehrten Tasks pruefen. Keine eigene Feldbeschreibung im Bestand."
        },
        "zsh_target_home": {
          "label": "zsh_target_home",
          "description": "Rollen-Default; Bedeutung ueber die aufgefuehrten Tasks pruefen. Keine eigene Feldbeschreibung im Bestand."
        },
        "zsh_oh_my_zsh_install_url": {
          "label": "zsh_oh_my_zsh_install_url",
          "description": "Rollen-Default; Bedeutung ueber die aufgefuehrten Tasks pruefen. Keine eigene Feldbeschreibung im Bestand."
        },
        "zsh_powerlevel10k_repo": {
          "label": "zsh_powerlevel10k_repo",
          "description": "Rollen-Default; Bedeutung ueber die aufgefuehrten Tasks pruefen. Keine eigene Feldbeschreibung im Bestand."
        }
      }
    },
    "en": {
      "title": "Role zsh",
      "description": "# Role zsh\n\nRole: `roles/zsh`.\n\nTask names as written in the role:\n\n- Zsh-Pakete installieren\n- Oh My Zsh unbeaufsichtigt installieren\n- Powerlevel10k installieren\n- Zsh-Konfiguration ausrollen\n- Powerlevel10k-Konfiguration ausrollen\n- Zsh als Standard-Shell setzen\n\nThe parameters list public role defaults. Internal facts, registered values and private host credentials are not form inputs.\n\n## Parameters\n\nThe listed sources define these parameters. Missing documentation is indicated. Defaults are informational. Credentials are omitted.\n\n## Sources and maintenance\n\n- `roles/zsh/tasks/main.yml`\n- `roles/zsh/defaults/main.yml`\n\nMaintain this description and its source hashes together when the code changes. The database stores a cache.\n\n## Per-task TLS certificate validation (1.1.0)\n\nIn `group_vars/all/settings.yml`, `tls_validate_certs.zsh_installer_download` controls the Oh My Zsh download and `tls_validate_certs.zsh_theme_clone` the Powerlevel10k clone. Both inherit `tls_validate_certs_default` (default true). Explicit false disables only its own check.\n\nThe site default is `tls_validate_certs_default`, normally true. Telegram tasks independently default to true unless their own override is set.",
      "fields": {
        "zsh_target_user": {
          "label": "zsh_target_user",
          "description": "Role default. Consult the listed tasks for its purpose. The original role has no separate field description."
        },
        "zsh_target_home": {
          "label": "zsh_target_home",
          "description": "Role default. Consult the listed tasks for its purpose. The original role has no separate field description."
        },
        "zsh_oh_my_zsh_install_url": {
          "label": "zsh_oh_my_zsh_install_url",
          "description": "Role default. Consult the listed tasks for its purpose. The original role has no separate field description."
        },
        "zsh_powerlevel10k_repo": {
          "label": "zsh_powerlevel10k_repo",
          "description": "Role default. Consult the listed tasks for its purpose. The original role has no separate field description."
        }
      }
    }
  }
}
```

## Quellen und Pflege

- `roles/zsh/tasks/main.yml`
- `roles/zsh/defaults/main.yml`

Diese Datei ist die Pflegequelle fuer Mensch und Add-on. Bei Codeaenderungen
Beschreibung und Quellhashs gemeinsam pruefen. Die Datenbank ist nur Cache.


## TLS-Zertifikatspruefung pro Aufgabe (1.1.0)

Optionale Eintraege unter `tls_validate_certs` in `group_vars/all/settings.yml`.
Fehlende Eintraege erben tls_validate_certs_default (ohne Standortstandard true); explizites false deaktiviert nur die genannte Pruefung.
- `tls_validate_certs.zsh_installer_download`: Oh My Zsh laden (Standard true).
- `tls_validate_certs.zsh_theme_clone`: Powerlevel10k klonen (Standard true).

Standortstandard: tls_validate_certs_default (ohne Eintrag true). Telegram-Aufgaben
verwenden unabhaengig davon true als Default, ausser bei explizitem Task-Override.
