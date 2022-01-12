#!/usr/bin/env sh

src=$1
dst=$2
opts=$3

echo "Rclone Syncing..."
# shellcheck disable=2086
rclone sync "$src" "$dst" $opts
echo "Rclone Synced!"