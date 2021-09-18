#!/usr/bin/env sh

mw_lock(){
    if [ -s "$1" ]
    then
        echo "Locked: $(cat "$1")"
        echo 'Exit!'
        exit 1
    fi
    mkdir -p "$(dirname "$1")"
    # shellcheck disable=2064
    trap "> $1" EXIT
    echo "$2" > "$1"
}

