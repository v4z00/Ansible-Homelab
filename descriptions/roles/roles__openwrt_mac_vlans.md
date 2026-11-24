# Rolle openwrt_mac_vlans

Rolle: `roles/openwrt_mac_vlans`.

Im Bestand definierte Aufgaben:

- Zentrale Einstellungen pruefen
- MAC-Adressen validieren
- Verwaltete WLAN-Konfiguration abgleichen
- Geaenderte WLAN-Konfiguration aktivieren oder fehlgeschlagenen Reload nachholen
- Ergebnis anzeigen

Die Parameterliste beschreibt vorhandene oeffentliche Defaults. Task-interne Fakten, Registerwerte und Hostsecrets werden nicht in Eingabeparameter umgedeutet.


## Parameter und maschinenlesbarer Vertrag

Die Angaben stammen aus den aufgefuehrten Quellen. Fehlende Erklaerungen sind
als solche markiert. Defaults sind Hinweise und werden nicht automatisch gesetzt.
Vertrauliche Werte werden nicht dokumentiert.

```json
{
  "schema_version": 1,
  "kind": "role",
  "ref": "roles/openwrt_mac_vlans",
  "title": "Rolle openwrt_mac_vlans",
  "documented": false,
  "fields": [],
  "constraints": [],
  "sources": [
    "roles/openwrt_mac_vlans/tasks/main.yml"
  ],
  "source_hashes": {
    "roles/openwrt_mac_vlans/tasks/main.yml": "5628066232c3a4e2f408a940c008314338d89dea21c738b67546066b8a684298"
  }
}
```

## Quellen und Pflege

- `roles/openwrt_mac_vlans/tasks/main.yml`

Diese Datei ist die Pflegequelle fuer Mensch und Add-on. Bei Codeaenderungen
Beschreibung und Quellhashs gemeinsam pruefen. Die Datenbank ist nur Cache.
