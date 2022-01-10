#!/usr/bin/env sh

set -e

echo "Rclone Syncing..."

rclone sync \
    --dry-run \
    "$BACKUP_SRC" \
    "$BACKUP_DST" \
    "$BACKUP_OPTS"

rclone sync \
    "$BACKUP_SRC" \
    "${BACKUP_DST}" \
    "${BACKUP_OPTS}"

echo "Rclone Synced!"