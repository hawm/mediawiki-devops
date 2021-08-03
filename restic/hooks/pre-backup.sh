#!/bin/sh

targetDir="/data/database"
rm -rf ${targetDir}
mariabackup --backup \
    --host=${BACKUP_DATABASE_HOST} \
    --user=${BACKUP_DATABASE_USER} \
    --password=${BACKUP_DATABASE_PASSWORD} \
    --target-dir=${targetDir}