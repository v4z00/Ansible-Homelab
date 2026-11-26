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
  },
  "i18n": {
    "de": {
      "title": "Playbook playbooks/network/openwrt/configure_mac_vlans.yml",
      "description": "# Playbook playbooks/network/openwrt/configure_mac_vlans.yml\n\nVorhandener Einstieg: `playbooks/network/openwrt/configure_mac_vlans.yml`.\n\nIm Quelltext benannte Plays/Aufgaben:\n\n- OpenWrt MAC-VLAN-Konfiguration abgleichen und aktivieren\n- Bewusste Aktivierung und Zielbegrenzung pruefen\n\nAusfuehrung bevorzugt ueber den passenden Control-Befehl. Die Datei allein beschreibt nicht alle effektiven Variablen: Rollen, Inventar und lokale Standortkonfiguration wirken weiterhin. Keine allgemeinen --check-/Limit-Garantien daraus ableiten.\n\n\n## Parameter und maschinenlesbarer Vertrag\n\nDie Angaben stammen aus den aufgefuehrten Quellen. Fehlende Erklaerungen sind\nals solche markiert. Defaults sind Hinweise und werden nicht automatisch gesetzt.\nVertrauliche Werte werden nicht dokumentiert.\n\n## Quellen und Pflege\n\n- `playbooks/network/openwrt/configure_mac_vlans.yml`\n\nDiese Datei ist die Pflegequelle fuer Mensch und Add-on. Bei Codeaenderungen\nBeschreibung und Quellhashs gemeinsam pruefen. Die Datenbank ist nur Cache.",
      "fields": {}
    },
    "en": {
      "title": "Playbook playbooks/network/openwrt/configure_mac_vlans.yml",
      "description": "# Playbook playbooks/network/openwrt/configure_mac_vlans.yml\n\nPlaybook: `playbooks/network/openwrt/configure_mac_vlans.yml`.\n\nPlay and task names as written in the playbook:\n\n- OpenWrt MAC-VLAN-Konfiguration abgleichen und aktivieren\n- Bewusste Aktivierung und Zielbegrenzung pruefen\n\nRun the corresponding Control command. Roles, inventory and site settings also affect this playbook. Check support for --limit and check mode before use.\n\n## Parameters\n\nThe listed sources define these parameters. Missing documentation is indicated. Defaults are informational. Credentials are omitted.\n\n## Sources and maintenance\n\n- `playbooks/network/openwrt/configure_mac_vlans.yml`\n\nMaintain this description and its source hashes together when the code changes. The database stores a cache.",
      "fields": {}
    }
  }
}
```

## Quellen und Pflege

- `playbooks/network/openwrt/configure_mac_vlans.yml`

Diese Datei ist die Pflegequelle fuer Mensch und Add-on. Bei Codeaenderungen
Beschreibung und Quellhashs gemeinsam pruefen. Die Datenbank ist nur Cache.
