#!/usr/bin/env sh

mw_lock(){
    # $1 is the absolute path of lock file
    # $2 is the content that will be wirte to the lock file
    if [ -s "$1" ]
    then
        echo "Locked: $(cat "$1")"
        echo 'Exit!'
        exit 1
    fi
    mkdir -p "$(dirname "$1")"
    # https://www.mediawiki.org/wiki/Manual:$wgReadOnlyFile
    # shellcheck disable=2064
    trap "> $1" EXIT INT HUP TERM
    echo "$2" > "$1"
}

