#!/usr/bin/env sh

# $1 is the absolute path  of lock file name
# $2 is the content will be wirte to lock file

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

