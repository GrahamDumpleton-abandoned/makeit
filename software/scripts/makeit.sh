#!/bin/sh

#
# = AUTHOR(S)
#     Graham Dumpleton
#
# = COPYRIGHT
#     Copyright 2003-2004 DUMPLETON SOFTWARE CONSULTING PTY LIMITED
#

VERSION=${MAKEIT_VERSION:-"8.0b7"}
MAKE_COMMAND="/usr/bin/make"

MAKEIT_HOME="`dirname $0`/../lib/makeit-${VERSION}"
export MAKEIT_HOME

if test "$#" != "0"
then
    ${MAKE_COMMAND} MAKE=${MAKE_COMMAND} -I${MAKEIT_HOME} "$@"
else
    ${MAKE_COMMAND} MAKE=${MAKE_COMMAND} -I${MAKEIT_HOME}
fi
