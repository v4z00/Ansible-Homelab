# Rolle openwrt_operations

Rolle: `roles/openwrt_operations`.

Im Bestand definierte Aufgaben:

- OpenWrt-Funktion pruefen
- OpenWrt-Daten lesen oder GUI gezielt steuern
- Ergebnis anzeigen
- Vergleich benoetigt mindestens zwei ausgewaehlte APs
- Sicheren lokalen Reportordner anlegen
- Bereinigten Vergleichsstand lokal speichern
- Die beiden ausgewaehlten APs vergleichen
- Unterschiede anzeigen

Die Parameterliste beschreibt vorhandene oeffentliche Defaults. Task-interne Fakten, Registerwerte und Hostsecrets werden nicht in Eingabeparameter umgedeutet.


## Parameter und maschinenlesbarer Vertrag

Die Angaben stammen aus den aufgefuehrten Quellen. Fehlende Erklaerungen sind
als solche markiert. Defaults sind Hinweise und werden nicht automatisch gesetzt.
Vertrauliche Werte werden nicht dokumentiert.

```json
{
  "schema_version": 1,
  "kind": "role",
  "ref": "roles/openwrt_operations",
  "title": "Rolle openwrt_operations",
  "documented": false,
  "fields": [],
  "constraints": [],
  "sources": [
    "roles/openwrt_operations/tasks/main.yml"
  ],
  "source_hashes": {
    "roles/openwrt_operations/tasks/main.yml": "26044db79c40ae2bd06273c6e8f524beeae1fa989e87db053d5a068bfb9cc904"
  },
  "i18n": {
    "de": {
      "title": "Rolle openwrt_operations",
      "description": "# Rolle openwrt_operations\n\nRolle: `roles/openwrt_operations`.\n\nIm Bestand definierte Aufgaben:\n\n- OpenWrt-Funktion pruefen\n- OpenWrt-Daten lesen oder GUI gezielt steuern\n- Ergebnis anzeigen\n- Vergleich benoetigt mindestens zwei ausgewaehlte APs\n- Sicheren lokalen Reportordner anlegen\n- Bereinigten Vergleichsstand lokal speichern\n- Die beiden ausgewaehlten APs vergleichen\n- Unterschiede anzeigen\n\nDie Parameterliste beschreibt vorhandene oeffentliche Defaults. Task-interne Fakten, Registerwerte und Hostsecrets werden nicht in Eingabeparameter umgedeutet.\n\n\n## Parameter und maschinenlesbarer Vertrag\n\nDie Angaben stammen aus den aufgefuehrten Quellen. Fehlende Erklaerungen sind\nals solche markiert. Defaults sind Hinweise und werden nicht automatisch gesetzt.\nVertrauliche Werte werden nicht dokumentiert.\n\n## Quellen und Pflege\n\n- `roles/openwrt_operations/tasks/main.yml`\n\nDiese Datei ist die Pflegequelle fuer Mensch und Add-on. Bei Codeaenderungen\nBeschreibung und Quellhashs gemeinsam pruefen. Die Datenbank ist nur Cache.\n\n\n## TLS-Zertifikatspruefung pro Aufgabe (1.1.0)\n\nOptionale Eintraege unter `tls_validate_certs` in `group_vars/all/settings.yml`.\nFehlende Eintraege erben tls_validate_certs_default (ohne Standortstandard true); explizites false deaktiviert nur die genannte Pruefung.\n- `tls_validate_certs.openwrt_wan_check`: OpenWrt-WAN-Pruefung (Standard true).\n\nStandortstandard: tls_validate_certs_default (ohne Eintrag true). Telegram-Aufgaben\nverwenden unabhaengig davon true als Default, ausser bei explizitem Task-Override.",
      "fields": {}
    },
    "en": {
      "title": "Role openwrt_operations",
      "description": "# Role openwrt_operations\n\nRole: `roles/openwrt_operations`.\n\nTask names as written in the role:\n\n- OpenWrt-Funktion pruefen\n- OpenWrt-Daten lesen oder GUI gezielt steuern\n- Ergebnis anzeigen\n- Vergleich benoetigt mindestens zwei ausgewaehlte APs\n- Sicheren lokalen Reportordner anlegen\n- Bereinigten Vergleichsstand lokal speichern\n- Die beiden ausgewaehlten APs vergleichen\n- Unterschiede anzeigen\n\nThe parameters list public role defaults. Internal facts, registered values and private host credentials are not form inputs.\n\n## Parameters\n\nThe listed sources define these parameters. Missing documentation is indicated. Defaults are informational. Credentials are omitted.\n\n## Sources and maintenance\n\n- `roles/openwrt_operations/tasks/main.yml`\n\nMaintain this description and its source hashes together when the code changes. The database stores a cache.\n\n## Per-task TLS certificate validation (1.1.0)\n\nIn `group_vars/all/settings.yml`, `tls_validate_certs.openwrt_wan_check` controls verification during OpenWrt WAN checks. It inherits `tls_validate_certs_default` (default true). Explicit false disables only this check.\n\nThe site default is `tls_validate_certs_default`, normally true. Telegram tasks independently default to true unless their own override is set.",
      "fields": {}
    }
  }
}
```

## Quellen und Pflege

- `roles/openwrt_operations/tasks/main.yml`

Diese Datei ist die Pflegequelle fuer Mensch und Add-on. Bei Codeaenderungen
Beschreibung und Quellhashs gemeinsam pruefen. Die Datenbank ist nur Cache.


## TLS-Zertifikatspruefung pro Aufgabe (1.1.0)

Optionale Eintraege unter `tls_validate_certs` in `group_vars/all/settings.yml`.
Fehlende Eintraege erben tls_validate_certs_default (ohne Standortstandard true); explizites false deaktiviert nur die genannte Pruefung.
- `tls_validate_certs.openwrt_wan_check`: OpenWrt-WAN-Pruefung (Standard true).

Standortstandard: tls_validate_certs_default (ohne Eintrag true). Telegram-Aufgaben
verwenden unabhaengig davon true als Default, ausser bei explizitem Task-Override.
