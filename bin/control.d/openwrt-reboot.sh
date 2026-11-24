#!/usr/bin/env bash
set -euo pipefail
root=${CONTROL_PROJECT_ROOT:?}
command -v tmux >/dev/null || { echo 'OpenWrt-Neustart benötigt tmux. Auf Debian: apt-get install tmux' >&2; exit 2; }
session=ansible-openwrt-reboot
mkdir -p "$root/logs"
status=$(mktemp "$root/logs/openwrt-reboot-exit.XXXXXXXX")
# Eindeutige Sitzung pro Controllerbenutzer, auch bei gleichzeitigem Cron- und Handstart.
if ! id=$(tmux new-session -d -P -F '#{session_id}' -s "$session" -c "$root" /bin/bash "$root/scripts/openwrt_reboot_worker.sh" "$status" "$@"); then
  rm -f -- "$status"
  echo "Start fehlgeschlagen. Laufende Sitzung öffnen: tmux attach -t $session" >&2
  exit 1
fi
printf 'OpenWrt-Neustart läuft in tmux. Verbinden: tmux attach -t %s\n' "$session"
if [[ -t 0 && -t 1 && -z ${TMUX:-} ]]; then
  tmux attach-session -t "$id" || true
  if [[ ! -s "$status" ]] && tmux has-session -t "$id" 2>/dev/null; then
    echo "Sitzung gelöst. Der Neustart läuft weiter."
    exit 0
  fi
fi
# Cron wartet mit seinem äußeren flock bis zum Ende. Bei SSH-Abbruch arbeitet tmux weiter.
while [[ ! -s "$status" ]] && tmux has-session -t "$id" 2>/dev/null; do sleep 1; done
if ! read -r result < "$status"; then
  echo "Sitzung ohne Abschlussstatus beendet. Logs unter $root/logs prüfen." >&2
  exit 1
fi
rm -f -- "$status"
exit "$result"
