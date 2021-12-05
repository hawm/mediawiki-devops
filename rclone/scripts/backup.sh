#!/usr/bin/env sh

set -e

. "$BACKUP_SCRIPT_DIR/dump_db.sh"
. "$BACKUP_SCRIPT_DIR/mw_lock.sh"
. "$BACKUP_SCRIPT_DIR/rclone_sync.sh"

lockfile="$BACKUP_LOCK_DIR/lock"
mw_lock "$lockfile" "Backing up..."
echo "***Start backup at $(date)***" 
dump_db \
    "$BACKUP_DB_HOST" \
    "$BACKUP_DB_PORT" \
    "$BACKUP_DB_USER" \
    "$BACKUP_DB_PASS" \
    "$BACKUP_DB_NAME" \
    "$BACKUP_SRC/database/$BACKUP_DB_NAME"
rclone_sync "$BACKUP_SRC" "$BACKUP_DST" "$BACKUP_OPTS"
echo "***End backup at $(date)***"
