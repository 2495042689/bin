#! /usr/bin/env mksh

[ -n "$TMUX" ] && printf '\033]2;%s\a' "vim $*"

set -A files -- "$@"

while [ $# -gt 0 ] ; do
	Z -i "$XDG_DATA_HOME"/edit.z -a "$(realpath "$1")"
	shift
done

exec $EDITOR "${files[@]}"
