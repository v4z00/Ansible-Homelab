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
  },
  "i18n": {
    "de": {
      "title": "Playbook playbooks/network/openwrt/openwrt_reboot.yml",
      "description": "# Playbook playbooks/network/openwrt/openwrt_reboot.yml\n\nVorhandener Einstieg: `playbooks/network/openwrt/openwrt_reboot.yml`.\n\nIm Quelltext benannte Plays/Aufgaben:\n\n- OpenWrt-APs in Wellen neu starten\n- Feature, Zielauswahl und Wellennummer prüfen\n- Welle für diesen AP bestimmen\n- Wellen der ausgewählten APs in derselben Reihenfolge abarbeiten\n\nAusfuehrung bevorzugt ueber den passenden Control-Befehl. Die Datei allein beschreibt nicht alle effektiven Variablen: Rollen, Inventar und lokale Standortkonfiguration wirken weiterhin. Keine allgemeinen --check-/Limit-Garantien daraus ableiten.\n\n\nGleiche Wellennummern starten parallel. Nach den nummerierten Wellen folgen die übrigen APs einzeln und zuletzt die Mitglieder von openwrt_admin_ap. Der Befehl läuft in tmux. Standardziel ist openwrt_router.\n\n## Parameter und maschinenlesbarer Vertrag\n\nDie Angaben stammen aus den aufgefuehrten Quellen. Fehlende Erklaerungen sind\nals solche markiert. Defaults sind Hinweise und werden nicht automatisch gesetzt.\nVertrauliche Werte werden nicht dokumentiert.\n\n## Quellen und Pflege\n\n- `playbooks/network/openwrt/openwrt_reboot.yml`\n\nDiese Datei ist die Pflegequelle fuer Mensch und Add-on. Bei Codeaenderungen\nBeschreibung und Quellhashs gemeinsam pruefen. Die Datenbank ist nur Cache.",
      "fields": {}
    },
    "en": {
      "title": "Playbook playbooks/network/openwrt/openwrt_reboot.yml",
      "description": "# Playbook playbooks/network/openwrt/openwrt_reboot.yml\n\nPlaybook: `playbooks/network/openwrt/openwrt_reboot.yml`.\n\nPlay and task names as written in the playbook:\n\n- OpenWrt-APs in Wellen neu starten\n- Feature, Zielauswahl und Wellennummer prüfen\n- Welle für diesen AP bestimmen\n- Wellen der ausgewählten APs in derselben Reihenfolge abarbeiten\n\nRun the corresponding Control command. Roles, inventory and site settings also affect this playbook. Check support for --limit and check mode before use.\n\nAPs with the same wave number restart together. Unnumbered APs follow individually. The members of `openwrt_admin_ap` restart last, one at a time. The command runs in tmux and defaults to `openwrt_router`.\n\n## Parameters\n\nThe listed sources define these parameters. Missing documentation is indicated. Defaults are informational. Credentials are omitted.\n\n## Sources and maintenance\n\n- `playbooks/network/openwrt/openwrt_reboot.yml`\n\nMaintain this description and its source hashes together when the code changes. The database stores a cache.",
      "fields": {}
    }
  }
}
```

## Quellen und Pflege

- `playbooks/network/openwrt/openwrt_reboot.yml`

Diese Datei ist die Pflegequelle fuer Mensch und Add-on. Bei Codeaenderungen
Beschreibung und Quellhashs gemeinsam pruefen. Die Datenbank ist nur Cache.
