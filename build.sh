#!/bin/sh
set -e

BOOST_SRC="$1"
if [ -z "$BOOST_SRC" ]; then
    echo "Usage: $0 /path/to/boost"
    exit 1
fi

# Read all non-empty, non-comment lines into an array
LIBS=$(grep -vE '^\s*#|^\s*$' boost_libs.txt | xargs)

bcp $LIBS --boost="$BOOST_SRC" .
