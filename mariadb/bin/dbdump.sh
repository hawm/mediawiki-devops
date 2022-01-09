#!/usr/bin/env sh
set -e
echo "Database Dumping..."
mysqldump \
    --user="$MARIADB_USER" \
    --password="$MARIADB_PASSWORD" \
    --single-transaction \
    "$MARIADB_DATABASE" \
    | gzip > "$MYSQLDUMP_PATH/$MARIADB_DATABASE.sql.gz"
echo "Database Dumped!"