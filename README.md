[English](README.md) · [Deutsch](README.de.md)

# Ansible-Homelab

These are the playbooks I use for recurring homelab maintenance. The profile adds backups, OpenWrt maintenance and storage tasks to [Ansible-Allgm](https://github.com/v4z00/Ansible-Allgm). A fresh installation brings in the base automatically.

## What a maintenance run looks like

For a monthly access-point restart, put the APs into waves and mark the admin AP you use to reach the network. The playbook works through the waves and leaves the admin AP until last. The controller can run the job in tmux, so losing Wi-Fi on the laptop does not end the run. [OpenWrt restart and scheduling](descriptions/commands/openwrt-reboot.md)

| Area | Start here |
| --- | --- |
| Backups | [Backup command](descriptions/commands/backup.md) and [backup playbooks](playbooks/backup/) for controller configuration, cron, fstab and OpenWrt. |
| Networking | [OpenWrt playbooks](playbooks/network/openwrt/) to compare configurations and packages or inspect wireless clients. |
| Storage | [TrueNAS routing](descriptions/commands/truenas-routing.md) and [ZFS properties](descriptions/commands/zfs-optimize.md). |

## Get started

Use the [Debian installation guide](descriptions/configurations/installation-homelab.md) for a new controller or the migration preview for an existing one. The repository ships examples. Keep your own inventory, backup paths and credentials on your controller. After installation, run these commands from its project directory:

```sh
bin/control module-versions
bin/control list
```

[Commands](descriptions/commands/) · [Playbooks](descriptions/playbooks/) · [Roles](descriptions/roles/) · [Changelog](descriptions/releases/homelab.md)

I develop and test on `staging`. Stable releases come from `main`. I use AI to help write and maintain the playbooks. If a run behaves differently on your setup, an issue with the command and version is welcome. [GitHub releases](https://github.com/v4z00/Ansible-Homelab/releases) · [MIT license](LICENSE)
