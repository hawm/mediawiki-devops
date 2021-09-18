#!/usr/bin/env sh

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