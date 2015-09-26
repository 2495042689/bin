#! /usr/bin/env mksh

set -A files -- "$@"

while [ $# -gt 0 ] ; do
	fdb -i "$XDG_DATA_HOME"/edit.json -a "$(realpath "$1")"
	shift
done

exec $EDITOR "${files[@]}"
