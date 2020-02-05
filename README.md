# Scripts and files used on my Proxmox VE 6.1 environment

Use on your own risk.

## Repository layout

- `tree/` - files from `/` (root) tree common to all my installations
- `instances/NAME/` - instance specific files

## Required DEB packages

You need to install following additional DEB packages for specific scripts to work:

- `jq` for   `tree/usr/local/sbin/vms_get_ip_addresses.sh`
- `smem` for `tree/usr/local/sbin/swap_allocations.sh`
- `memlockd` for `tree/etc/memlockd.*`
- `git` for `tree/usr/local/bin/{graph_log.sh,push_branch.sh}`

