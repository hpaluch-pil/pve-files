#!/bin/bash

# show crgoups swappiness. Please see:
# - https://forum.proxmox.com/threads/swappiness-question.42295/page-2#post-248010
# - https://github.com/systemd/systemd/issues/9276#issuecomment-442514543

set -e
for i in $(find /sys/fs/cgroup/memory/ -name memory.swappiness)
do
	echo -n "$i:"
	cat $i
done
exit 0
