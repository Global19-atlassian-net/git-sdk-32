#!/usr/bin/env sh

THISDIR="$(dirname $0)"
test "$THISDIR" = "." && THISDIR=${PWD}

RESULT=$("${THISDIR}"/python2-config.sh "$@")

exec_prefix_win=$("${THISDIR}"/python2-config.sh --exec-prefix)
exec_prefix_unix=/mingw32
echo $(echo $RESULT | sed "s#${exec_prefix_win}#${exec_prefix_unix}#g")
