#!/usr/bin/env sh

set -e

rclone_sync.sh \
    "$RCLONE_SYNC_LOCAL" \
    "$RCLONE_SYNC_REMOTE" \
    "$RCLONE_SYNC_OPTS"