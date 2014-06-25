#! /bin/sh

ALL=$@

while [ $# -gt 0 ] ; do
	Z -i "$XDG_DATA_HOME"/edit.db -a "$(realpath "$1")"
	shift
done

$EDITOR "$ALL"
