#!/usr/bin/env sh

dump_db(){
    echo "Dump database to '$1.sql'..."
    mkdir -p "$(dirname "$1")"
    mysqldump \
        --host="$BACKUP_DB_HOST" \
        --port="$BACKUP_DB_PORT" \
        --user="$BACKUP_DB_USER" \
        --password="$BACKUP_DB_PASS" \
        --single-transaction \
        "$BACKUP_DB_NAME" \
        > "$1.sql"
    dump_statu=$?
    # Exit codes
    # https://github.com/twitter-forks/mysql/blob/master/client/mysqldump.c#L58
    case $dump_statu in
        0)
            # dump succeeded, do nothing
            ;;
        *)
            echo "ERROR: mysqldump exit: $dump_statu"
            exit $dump_statu
    esac
}
