#!/usr/bin/env bash
set +x +v
set -euo pipefail
set +a
umask 077

die() { printf '%s\n' "$1" >&2; exit 2; }

main() {
  local reply= work package key
  local -a missing=() network=() options=()

  while (($#)); do
    case $1 in

      --lang)
        [[ $# -ge 2 && ( $2 == de || $2 == en ) ]] || die "Use --lang de or --lang en"
        options+=("$1" "$2"); shift 2 ;;
      --addon|--addon-token-file)
        (( $# >= 2 )) && [[ -n $2 && $2 != --* ]] || die "Missing value for $1"
        options+=("$1" "$2")
        shift 2 ;;
      --help) printf '%s\n' 'install.sh [--lang de|en] [--addon NAME=HTTPS_URL] [--addon-token-file NAME=PATH]'; return ;;
      *) die 'Unbekannter Parameter. install.sh --help zeigt die Optionen.' ;;
    esac
  done
  ((EUID == 0)) || die 'Den Installer als root starten (sudo bash).'
  . /etc/os-release
  [[ $ID == debian && $VERSION_ID =~ ^(12|13)$ ]] || die 'Debian 12 oder 13 erforderlich.'

  work=$(mktemp -d /tmp/ansible-bootstrap.XXXXXXXX)
  # Use the generated path even after main's local variables have gone out of scope.
  printf -v cleanup 'rm -rf -- %q' "$work"
  trap "$cleanup" EXIT
  trap 'exit 129' HUP
  trap 'exit 130' INT
  trap 'exit 143' TERM

  for package in ca-certificates curl git python3; do
    if [[ $(dpkg-query -W -f='${db:Status-Status}' "$package" 2>/dev/null) != installed ]]; then
      missing+=("$package")
    fi
  done
  if ((${#missing[@]})); then
    apt-get update </dev/null
    DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends "${missing[@]}" </dev/null
  fi

  # Only network configuration crosses into Git. No credential helpers, rewrites,
  # .netrc, trace destinations or tokens from the invoking user's environment.
  for key in https_proxy HTTPS_PROXY http_proxy HTTP_PROXY no_proxy NO_PROXY ALL_PROXY all_proxy GIT_SSL_CAINFO SSL_CERT_FILE SSL_CERT_DIR; do
    [[ -z ${!key-} ]] || network+=("$key=${!key}")
  done
  mkdir "$work/home"
  (
    cd "$work"
    export PATH=/usr/sbin:/usr/bin:/sbin:/bin
    env -i PATH="$PATH" HOME="$work/home" GIT_CONFIG_NOSYSTEM=1 GIT_CONFIG_GLOBAL=/dev/null \
      GIT_ALLOW_PROTOCOL=https GIT_TERMINAL_PROMPT=0 GIT_ASKPASS=/bin/false "${network[@]}" \
      git -c core.hooksPath=/dev/null -c credential.helper= -c http.followRedirects=false \
        -c fetch.fsckObjects=true clone --quiet --single-branch --no-tags --depth 1 --branch main \
        -- "https://github.com/v4z00/Ansible-Allgm.git" Ansible-Allgm </dev/null
    cd Ansible-Allgm
    # Check the verifier's own digest before executing it. Its full check compares
    # the manifest against the actual Git objects and checks allowed paths/modes.
    python3 -I -B - <<'VERIFY'
import hashlib, json
from pathlib import Path
manifest = Path("SHA256SUMS.json")
verifier = Path("update_check/staging_manifest.py")
if any(p.is_symlink() for p in (manifest, verifier.parent, verifier)):
    raise SystemExit("Unzulässiger Link im Basis-Checkout")
expected = json.loads(manifest.read_bytes())["files"][verifier.as_posix()]["sha256"]
if hashlib.sha256(verifier.read_bytes()).hexdigest() != expected:
    raise SystemExit("SHA-256-Prüfung des Basisprüfers fehlgeschlagen")
VERIFY
    export GIT_CONFIG_GLOBAL=/dev/null GIT_CONFIG_NOSYSTEM=1
    env -i PATH="$PATH" HOME="$work/home" GIT_CONFIG_GLOBAL=/dev/null GIT_CONFIG_NOSYSTEM=1 \
      python3 -I -B update_check/staging_manifest.py verify Allgm </dev/null
    # Runtime setup uses root's home for its normal pip and Galaxy caches.
    env -i PATH="$PATH" HOME=/root TMPDIR="$work" PYTHONDONTWRITEBYTECODE=1 GIT_CONFIG_GLOBAL=/dev/null GIT_CONFIG_NOSYSTEM=1 \
      "LANG=${LC_ALL:-${LC_MESSAGES:-${LANG:-C}}}" "${network[@]}" python3 -B tools/pipe_install.py Homelab "${options[@]}" </dev/null
  )
}

main "$@"
