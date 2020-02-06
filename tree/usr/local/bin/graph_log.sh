#!/bin/bash
#
# shows nice graph of git commits
#

set -x
exec git log --graph --all --decorate --oneline
# here we are only in case of fatal exec error
exit 1

