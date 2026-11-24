"""Use Ansible's proven reboot/boot-ID polling without Python facts on OpenWrt."""
from ansible.errors import AnsibleError
from ansible.plugins.action.reboot import ActionModule as RebootAction


class ActionModule(RebootAction):
    TRANSFERS_FILES = False

    def get_distribution(self, task_vars):
        # The builtin reboot action normally calls setup (Python). Only replace
        # that discovery step; keep its SSH reset, polling and timeout handling.
        result = self._low_level_execute_command(
            'test -f /etc/openwrt_release && '
            'test -r /proc/sys/kernel/random/boot_id && '
            'test -x /sbin/reboot && command -v ubus >/dev/null',
            sudoable=False,
        )
        if result.get('rc', 1) != 0:
            raise AnsibleError('Kein geeignetes OpenWrt-Ziel oder erforderliche Reboot-Werkzeuge fehlen.')
        return {'name': 'openwrt', 'version': '0', 'family': 'linux'}
