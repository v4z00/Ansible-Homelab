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
    "roles/openwrt_operations/tasks/main.yml": "7efd1845e3170ed8c3a754e5ce75e49f5320ed80d3b0cbe98bcb8362d4757858"
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
Die drei Standorteinrichter setzen Telegram ausdruecklich auf true.
