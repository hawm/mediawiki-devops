#!/usr/bin/env sh
set -e
echo "Database Restoring..."
zcat "$MYSQLDUMP_PATH/$MARIADB_DATABASE.sql.gz" \
    | mysql \
    --user="$MARIADB_USER" \
    --password="$MARIADB_PASSWORD" \
    "$MARIADB_DATABASE"
echo "Database Restored!"