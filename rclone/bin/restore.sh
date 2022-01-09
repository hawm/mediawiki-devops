#!/usr/bin/env sh

set -e

echo "Rclone Syncing!"

rclone sync \
    --dry-run \
    "$BACKUP_DST" \
    "$BACKUP_SRC" \
    "$BACKUP_OPTS"

rclone sync \
    "$BACKUP_DST" \
    "${BACKUP_SRC}" \
    "${BACKUP_OPTS}"

echo "Rclone Synced!"