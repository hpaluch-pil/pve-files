#!/bin/bash
#
# pushes current branch to origin "origin" with tags and updates HEAD
#

branch=''
[ $# -eq 1 ] || {
  branch=`git branch | awk '/^\*/ { print $2 }'`
  [ -n "$branch" ] || {
	echo "No branch argument specified and unable to detect git branch"
	exit 1
  }
}

set -xe
git push -u --tags origin "$branch"

