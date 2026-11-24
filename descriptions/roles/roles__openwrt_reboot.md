# Rolle openwrt_reboot

Rolle: `roles/openwrt_reboot`.

Im Bestand definierte Aufgaben:

- Geplanten Neustart im Check-Modus anzeigen
- OpenWrt neu starten und neue Boot-ID bestaetigen

Die Parameterliste beschreibt vorhandene oeffentliche Defaults. Task-interne Fakten, Registerwerte und Hostsecrets werden nicht in Eingabeparameter umgedeutet.


## Parameter und maschinenlesbarer Vertrag

Die Angaben stammen aus den aufgefuehrten Quellen. Fehlende Erklaerungen sind
als solche markiert. Defaults sind Hinweise und werden nicht automatisch gesetzt.
Vertrauliche Werte werden nicht dokumentiert.

```json
{
  "schema_version": 1,
  "kind": "role",
  "ref": "roles/openwrt_reboot",
  "title": "Rolle openwrt_reboot",
  "documented": false,
  "fields": [],
  "constraints": [],
  "sources": [
    "roles/openwrt_reboot/tasks/main.yml"
  ],
  "source_hashes": {
    "roles/openwrt_reboot/tasks/main.yml": "837b0d8bd5dc9dcc93b744577644aea7a31b0bae88c60d9aaf57b9dc2dca8933"
  }
}
```

## Quellen und Pflege

- `roles/openwrt_reboot/tasks/main.yml`

Diese Datei ist die Pflegequelle fuer Mensch und Add-on. Bei Codeaenderungen
Beschreibung und Quellhashs gemeinsam pruefen. Die Datenbank ist nur Cache.
