#!/usr/bin/env sh

rclone_sync(){
    # $1 is ths source of rclone sync
    # $2 is the destination of rclone sync
    # $3 is the options or flags
    # see also 
    # https://rclone.org/commands/rclone_sync/
    # https://rclone.org/docs/#exit-code
    # https://rclone.org/docs/#error-on-no-transfer
    
    # shellcheck disable=2086
    rclone sync -n "$1" "$2" $3 \
    && rclone sync "$1" "$2" $3
}

