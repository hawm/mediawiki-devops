#!/usr/bin/env bash

set -e 

case $1 in
    mwupdate|mwinstall)
        exec "$WIKI_SCRIPT_DIR/$1.sh"
        ;;
    *)
        exec "$@"
        ;;
esac

