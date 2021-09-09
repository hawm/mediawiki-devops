#!/bin/sh

crontabs=/var/spool/cron/crontabs/root

echo "Setup backup cron job with cron expression BACKUP_CRON: ${BACKUP_CRON}"
cat > "$crontabs" << EOL
${BACKUP_CRON} \
flock -n /var/run/backup.lock \
run-parts --exit-on-error \
${JOB_DIR}/${JOB_NAME}
EOL

cat "$crontabs"

echo "Container Started"

exec "$@"

