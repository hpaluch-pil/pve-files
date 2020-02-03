#!/bin/sh

# add changes from "/" to this git tree/

set -e
cd `dirname $0`/tree

for i in `find ./ -type f`
do
	echo "Scanning '$i':"
	r="/$i"
	[ -r "$r" ] || {
		echo "WARN: Unable to access '$r' - ignored" >&2
		continue
	}

	diff --color=always -u "$i" "$r" || {
		echo -n "Copy above changes to git [y/N]? "
		read ans
		case "$ans" in
			[yY]|[yY][eE][sS])
				cp -v "$r" "$i"
				;;

			*)
				echo "Skipping file"
				;;
		esac
	}
done

