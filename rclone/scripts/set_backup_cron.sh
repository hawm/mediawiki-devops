#!/usr/bin/env sh

cronfile="/etc/crontabs/$(whoami)"
echo "Setup backup cron job with cron expression \$BACKUP_CRON: $BACKUP_CRON"
echo "${BACKUP_CRON} sh $BACKUP_SCRIPT_PATH/backup.sh" > "$cronfile"
echo "$cronfile"