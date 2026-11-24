# Playbook playbooks/network/openwrt/openwrt_reboot.yml

Vorhandener Einstieg: `playbooks/network/openwrt/openwrt_reboot.yml`.

Im Quelltext benannte Plays/Aufgaben:

- OpenWrt-APs nacheinander neu starten
- Feature und ausdrueckliche Zielauswahl pruefen

Ausfuehrung bevorzugt ueber den passenden Control-Befehl. Die Datei allein beschreibt nicht alle effektiven Variablen: Rollen, Inventar und lokale Standortkonfiguration wirken weiterhin. Keine allgemeinen --check-/Limit-Garantien daraus ableiten.


## Parameter und maschinenlesbarer Vertrag

Die Angaben stammen aus den aufgefuehrten Quellen. Fehlende Erklaerungen sind
als solche markiert. Defaults sind Hinweise und werden nicht automatisch gesetzt.
Vertrauliche Werte werden nicht dokumentiert.

```json
{
  "schema_version": 1,
  "kind": "playbook",
  "ref": "playbooks/network/openwrt/openwrt_reboot.yml",
  "title": "Playbook playbooks/network/openwrt/openwrt_reboot.yml",
  "documented": false,
  "fields": [],
  "constraints": [],
  "sources": [
    "playbooks/network/openwrt/openwrt_reboot.yml"
  ],
  "source_hashes": {
    "playbooks/network/openwrt/openwrt_reboot.yml": "43f8a033698e6bb916ea2a179c55a951aedf67b3051f587bcd1e0d85fb143a8c"
  }
}
```

## Quellen und Pflege

- `playbooks/network/openwrt/openwrt_reboot.yml`

Diese Datei ist die Pflegequelle fuer Mensch und Add-on. Bei Codeaenderungen
Beschreibung und Quellhashs gemeinsam pruefen. Die Datenbank ist nur Cache.
