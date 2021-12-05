#!/usr/bin/env sh

set -e

if [ "$1" = 'backup' ]
then
    if [ -n "$BACKUP_SCRIPT_DIR" ]
    then
        exec sh "$BACKUP_SCRIPT_DIR/backup.sh" "$@"
    else
        echo "environment \$BACKUP_SCRIPT_DIR dose not set"
        exit 1
    fi
else
    exec "$@"
fi

