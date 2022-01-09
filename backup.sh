#!/usr/bin/env bash

if [ -z "$APP_DIR" ]
then
    APP_DIR=$(dirname "$(readlink -f "$0")")
fi

compose(){
    # shellcheck disable=1091
    . "$APP_DIR/compose" "$@"
}

if compose exec mariadb echo Database Running!
then
    compose exec mariadb dbdump.sh
else
    echo 'Database Not Running!'
    compose run --rm mariadb dbdump.sh
fi
# shellcheck disable=2016
compose run --rm rclone backup.sh