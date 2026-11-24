# Playbook playbooks/network/openwrt/openwrt_reboot.yml

Vorhandener Einstieg: `playbooks/network/openwrt/openwrt_reboot.yml`.

Im Quelltext benannte Plays/Aufgaben:

- OpenWrt-APs in Wellen neu starten
- Feature, Zielauswahl und Wellennummer prüfen
- Welle für diesen AP bestimmen
- Wellen der ausgewählten APs in derselben Reihenfolge abarbeiten

Ausfuehrung bevorzugt ueber den passenden Control-Befehl. Die Datei allein beschreibt nicht alle effektiven Variablen: Rollen, Inventar und lokale Standortkonfiguration wirken weiterhin. Keine allgemeinen --check-/Limit-Garantien daraus ableiten.


Gleiche Wellennummern starten parallel. Nach den nummerierten Wellen folgen die übrigen APs einzeln und zuletzt die Mitglieder von openwrt_admin_ap. Der Befehl läuft in tmux. Standardziel ist openwrt_router.

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
    "playbooks/network/openwrt/openwrt_reboot.yml": "8e434225b6b1433c2a0c591e081eb8c850fd309ce6e7e09924518c176e8d1902"
  }
}
```

## Quellen und Pflege

- `playbooks/network/openwrt/openwrt_reboot.yml`

Diese Datei ist die Pflegequelle fuer Mensch und Add-on. Bei Codeaenderungen
Beschreibung und Quellhashs gemeinsam pruefen. Die Datenbank ist nur Cache.
