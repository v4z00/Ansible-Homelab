"""Exercise backup orchestration without any real hosts, backups or transports."""
import json
import os
from pathlib import Path
import shutil
import subprocess
import tempfile
import unittest

ROOT = Path(__file__).resolve().parents[2]


class BackupSummary(unittest.TestCase):
    def setUp(self):
        temporary = tempfile.TemporaryDirectory()
        self.addCleanup(temporary.cleanup)
        self.root = Path(temporary.name)
        script = self.root / 'playbooks/backup/run_ansible_backup.sh'
        script.parent.mkdir(parents=True)
        shutil.copyfile(ROOT / 'playbooks/backup/run_ansible_backup.sh', script)
        self.script = script
        helper = self.root / 'lib/control/helpers.sh'
        helper.parent.mkdir(parents=True)
        helper.write_text('''set -euo pipefail
run_playbook_with_jobs() { echo "captured $*" >> "$TRACE"; ansible-playbook "$@"; }
record_control_failure() { echo "recorded-failure $*" >> "$TRACE"; }
''')
        fake = self.root / 'bin'
        fake.mkdir()
        (fake / 'ansible').write_text('''#!/bin/sh
if [ "$1" = "$MISSING_GROUP" ]; then echo '  hosts (0):'; else printf '  hosts (1):\\n    fixture\\n'; fi
''')
        (fake / 'ansible-playbook').write_text('''#!/bin/sh
echo "play $*" >> "$TRACE"
case "$1" in *"$FAIL_PLAYBOOK") [ -z "$FAIL_PLAYBOOK" ] || exit 17;; esac
exit 0
''')
        for file in fake.iterdir():
            file.chmod(0o700)
        self.trace = self.root / 'trace'
        self.env = dict(os.environ, PATH=str(fake) + os.pathsep + os.environ['PATH'], TRACE=str(self.trace), MISSING_GROUP='', FAIL_PLAYBOOK='')

    def central(self):
        (self.root / 'config').mkdir()
        (self.root / 'config/script_jobs_controller.json').write_text(json.dumps({'database': str(self.root / 'controller.db')}))

    def run_cycle(self):
        return subprocess.run(['bash', str(self.script), '--limit', 'fixture'], env=self.env, capture_output=True, text=True)

    def test_configured_controller_captures_backups_without_extra_notification(self):
        self.central()
        result = self.run_cycle()
        self.assertEqual(result.returncode, 0, result.stderr)
        trace = self.trace.read_text()
        self.assertEqual(trace.count('captured '), 7)
        self.assertNotIn('notify.yml', trace)
        self.assertIn('--limit fixture', trace)

    def test_failed_parts_are_captured_and_remaining_parts_still_run(self):
        self.central()
        self.env['FAIL_PLAYBOOK'] = 'backup_scripte.yaml'
        result = self.run_cycle()
        self.assertEqual(result.returncode, 1, result.stderr)
        self.assertEqual(self.trace.read_text().count('captured '), 7)
        self.assertNotIn('notify.yml', self.trace.read_text())

    def test_missing_targets_are_recorded_instead_of_lost_when_no_play_starts(self):
        self.central()
        self.env['MISSING_GROUP'] = 'all_script_hosts'
        result = self.run_cycle()
        self.assertEqual(result.returncode, 1, result.stderr)
        self.assertEqual(self.trace.read_text().count('recorded-failure '), 2)
        self.assertNotIn('notify.yml', self.trace.read_text())

    def test_legacy_notification_remains_until_controller_setup(self):
        result = self.run_cycle()
        self.assertEqual(result.returncode, 0, result.stderr)
        trace = self.trace.read_text()
        self.assertNotIn('captured ', trace)
        self.assertEqual(trace.count('notify.yml'), 1)


if __name__ == '__main__':
    unittest.main(verbosity=2)
