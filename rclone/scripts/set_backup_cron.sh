#!/usr/bin/env sh

cronfile="/etc/crontabs/$(whoami)"
echo "Setup backup cron job with cron expression ${BACKUP_CRON:='0 0 31 2 0'}"
echo "$BACKUP_CRON sh $BACKUP_SCRIPT_DIR/backup.sh" > "$cronfile"
cat "$cronfile"
