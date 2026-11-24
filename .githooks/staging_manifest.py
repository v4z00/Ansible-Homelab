#!/usr/bin/env python3
"""Create/verify the SHA-256 manifest of Git-tracked deployment files."""

import argparse
import hashlib
import json
from pathlib import Path, PurePosixPath
import re
import subprocess
import sys

MANIFEST = "SHA256SUMS.json"
PROFILES = {"Allgm", "Homelab", "NXTS3"}
CODE_DIRS = {"bin", "config", "descriptions", "lib", "playbooks", "roles",
             "scripts", "templates", "tools", "update_check"}
CODE_FILES = {"configure_server_BASE.sh", "controller-base.json", "requirements-controller.txt",
              "requirements.yml", "requirements-extra.yml", "VERSION.txt",
              "controller-overlay.json", "install-controller", "install.sh"}
REPO_FILES = CODE_FILES | {".gitignore", "README.md", MANIFEST}
BLOCKED = {"inventory", "inventories", "host_vars", "group_vars", "ansible.cfg",
           "inventory_config.yml", "inventory.yml", "settings.yml", "secrets.yml",
           "host_credentials.yml", "credentials.yml", ".env", "_local", "docs", "reports",
           "regeln.txt", "agents.md", "claude.md", "gemini.md", "logs", "state", "99_readme",
           "artifacts", "script-config", "script-configs", "collections", "nxts3-hostvars.yml", "versions.txt"}
PART = re.compile(r"[A-Za-z0-9_.+-]+\Z")
MAX_FILE = 32 * 1024 * 1024


def json_pairs(pairs):
    result = dict(pairs)
    if len(result) != len(pairs):
        raise ValueError("Doppelter JSON-Schlüssel")
    return result


def load(path):
    return json.loads(path.read_text(), object_pairs_hook=json_pairs)


def public_library(name):
    return re.fullmatch(
        r"artifacts/script-library/lib/(?:load\.sh|common/[a-z][a-z0-9_]*\.sh|data/mail-translations\.json)",
        name,
    ) is not None


def ship(name):
    parts = PurePosixPath(name).parts
    return public_library(name) or name in CODE_FILES or len(parts) > 1 and parts[0] in CODE_DIRS


def allowed(name):
    path = PurePosixPath(name)
    ps = path.parts
    if not ps or path.as_posix() != name or path.is_absolute():
        return False
    if any(not PART.fullmatch(p) or p in {".", ".."} for p in ps):
        return False
    if public_library(name) or name in REPO_FILES:
        return True
    if ps[0] == ".githooks":
        return len(ps) == 2 and ps[1] in {"pre-commit", "pre-push", "staging_manifest.py"}
    if ps[0] == "examples":
        return (len(ps) >= 3 and not any(x.startswith(".") for x in ps)
                and (path.name.endswith(".example") or ".example." in path.name))
    if not ship(name):
        return False
    for i, part in enumerate(ps):
        pf = part.lower()
        if (pf in BLOCKED or pf.startswith(".env") or pf.endswith(
                (".pem", ".key", ".token", ".p12", ".pfx", ".keytab", ".kdbx", ".bak", ".pyc", ".log"))):
            return False
        if part.startswith(".") and not (i == 2 and part == ".versions"
                                         and ps[:2] == ("bin", "control.d")):
            return False
    return True


def git(root, *args):
    return subprocess.check_output(["git", "-C", str(root), *args])


def repo_tree(root, ref):
    if ref == ":index":
        entries = git(root, "ls-files", "--stage", "-z")
    else:
        entries = git(root, "ls-tree", "-r", "-z", ref)
    output = {}
    for record in entries.split(b"\0"):
        if not record:
            continue
        attrs, filename = record.split(b"\t", 1)
        mode, mid, last = attrs.decode("ascii").split()
        name = filename.decode("utf-8")
        if name in output or mode not in {"100644", "100755"} or not allowed(name):
            raise ValueError(f"Unzulässiger Git-Pfad oder Dateityp: {name}")
        if ref == ":index" and last != "0" or ref != ":index" and mid != "blob":
            raise ValueError(f"Git-Konflikt oder Sonderdatei: {name}")
        output[name] = (mode, mid if ref == ":index" else last)
    if len({n.casefold() for n in output}) != len(output):
        raise ValueError("Dateipfade kollidieren auf macOS")
    return output


def digest_objects(root, tree):
    ids = sorted({oid for _mode, oid in tree.values()})
    if not ids:
        raise ValueError("Keine verwalteten Dateien")
    hashes = {}
    # Stream one object at a time. The NXTS3 wheelhouse is larger than a pipe buffer.
    with subprocess.Popen(["git", "-C", str(root), "cat-file", "--batch"],
                          stdin=subprocess.PIPE, stdout=subprocess.PIPE) as proc:
        try:
            for oid in ids:
                proc.stdin.write(oid.encode("ascii") + b"\n")
                proc.stdin.flush()
                hdr = proc.stdout.readline().split()
                if len(hdr) != 3 or hdr[1] != b"blob" or int(hdr[2]) > MAX_FILE:
                    raise ValueError("Ungültiger Git-Blob oder Datei zu groß")
                data = proc.stdout.read(int(hdr[2]))
                if len(data) != int(hdr[2]) or proc.stdout.read(1) != b"\n":
                    raise ValueError("Unvollständiger Git-Blob")
                hashes[oid] = hashlib.sha256(data).hexdigest()
        finally:
            proc.stdin.close()
            proc.stdout.close()
        if proc.wait():
            raise ValueError("Git konnte die Dateien nicht lesen")
    return {name: {"sha256": hashes[oid], "mode": "0755" if mode == "100755" else "0644"}
            for name, (mode, oid) in sorted(tree.items())}


def create(root, profile, ref):
    paths = {name: value for name, value in repo_tree(root, ref).items() if ship(name)}
    return {"schema": 1, "profile": profile, "files": digest_objects(root, paths)}


def verify(root, profile, ref="HEAD"):
    raw = git(root, "show", f"{ref}:{MANIFEST}")
    if len(raw) > 2 * 1024 * 1024:
        raise ValueError("Manifest zu groß")
    declared = json.loads(raw, object_pairs_hook=json_pairs)
    actual = create(root, profile, ref)
    if declared != actual:
        raise ValueError(f"SHA-256-Manifest für {profile} stimmt nicht mit {ref} überein")
    return actual["files"]


def main():
    ap = argparse.ArgumentParser(description=__doc__)
    ap.add_argument("action", choices=("index", "verify"))
    ap.add_argument("profile", choices=sorted(PROFILES))
    ap.add_argument("ref", nargs="?", default="HEAD")
    args = ap.parse_args()
    root = Path(git(Path.cwd(), "rev-parse", "--show-toplevel").decode().strip())
    try:
        if args.action == "index":
            data = create(root, args.profile, ":index")
            target = root / MANIFEST
            if target.is_symlink():
                raise ValueError("Manifest ist ein Link")
            target.write_text(json.dumps(data, indent=2) + "\n")
            git(root, "add", "--", MANIFEST)
        else:
            verify(root, args.profile, args.ref)
    except (ValueError, OSError, subprocess.CalledProcessError) as error:
        print(error, file=sys.stderr)
        return 2
    return 0


if __name__ == "__main__":
    sys.exit(main())
