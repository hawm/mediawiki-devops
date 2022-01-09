#!/usr/bin/env bash

if [ -z "$APP_DIR" ]
then
    APP_DIR=$(dirname "$(readlink -f "$0")")
fi

compose(){
    # shellcheck disable=1091
    . "$APP_DIR/compose" "$@"
}

compose run --rm rclone restore.sh
if compose exec mariadb
then
    compose exec mariadb dbrestore.sh
else
    compose run --rm mariadb dbrestore.sh
fi