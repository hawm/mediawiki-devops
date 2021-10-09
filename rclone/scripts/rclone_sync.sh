#!/usr/bin/env sh

# $1 is ths source of rclone sync
# $2 is the destination of rclone sync
# $3 is the options or flags
# see also https://rclone.org/commands/rclone_sync/

rclone_sync(){
    # shellcheck disable=2086
    rclone sync "$1" "$2" $3
    rclone_sync_statu=$? 
    # Exit codes
    # https://rclone.org/docs/#exit-code
    case $rclone_sync_statu in
        0)
            ;;
        *)
            echo "ERROR: rclone exit: $rclone_sync_statu"
            exit "$rclone_sync_statu"
            ;;
    esac
}