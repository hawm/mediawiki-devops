#!/usr/bin/env sh

. "$BACKUP_SCRIPT_PATH/dump_db.sh"
. "$BACKUP_SCRIPT_PATH/mw_lock.sh"
. "$BACKUP_SCRIPT_PATH/rclone_sync.sh"

mw_lock "$BACKUP_LOCK_PATH/lock" "Backing up..."
echo "***Start backup at $(date)***"
dump_db "$BACKUP_DATABASE_SRC/$BACKUP_DB_NAME"
rclone_sync "$BACKUP_SRC" "$BACKUP_DST" "$BACKUP_OPTS"
echo "***End backup at $(date)***"
