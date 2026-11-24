# Playbook playbooks/network/openwrt/configure_mac_vlans.yml

Vorhandener Einstieg: `playbooks/network/openwrt/configure_mac_vlans.yml`.

Im Quelltext benannte Plays/Aufgaben:

- OpenWrt MAC-VLAN-Konfiguration abgleichen und aktivieren
- Bewusste Aktivierung und Zielbegrenzung pruefen

Ausfuehrung bevorzugt ueber den passenden Control-Befehl. Die Datei allein beschreibt nicht alle effektiven Variablen: Rollen, Inventar und lokale Standortkonfiguration wirken weiterhin. Keine allgemeinen --check-/Limit-Garantien daraus ableiten.


## Parameter und maschinenlesbarer Vertrag

Die Angaben stammen aus den aufgefuehrten Quellen. Fehlende Erklaerungen sind
als solche markiert. Defaults sind Hinweise und werden nicht automatisch gesetzt.
Vertrauliche Werte werden nicht dokumentiert.

```json
{
  "schema_version": 1,
  "kind": "playbook",
  "ref": "playbooks/network/openwrt/configure_mac_vlans.yml",
  "title": "Playbook playbooks/network/openwrt/configure_mac_vlans.yml",
  "documented": false,
  "fields": [],
  "constraints": [],
  "sources": [
    "playbooks/network/openwrt/configure_mac_vlans.yml"
  ],
  "source_hashes": {
    "playbooks/network/openwrt/configure_mac_vlans.yml": "a343f2fe42875588d7f3e48357b386484b64080704b07f2ee6100b75fc93686c"
  }
}
```

## Quellen und Pflege

- `playbooks/network/openwrt/configure_mac_vlans.yml`

Diese Datei ist die Pflegequelle fuer Mensch und Add-on. Bei Codeaenderungen
Beschreibung und Quellhashs gemeinsam pruefen. Die Datenbank ist nur Cache.
