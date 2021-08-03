#!/bin/sh

targetDir="/data/database"
mysqldump \
    --verbose \
    --host=${BACKUP_DATABASE_HOST} \
    --user=${BACKUP_DATABASE_USER} \
    --password=${BACKUP_DATABASE_PASSWORD} \
    --single-transaction \
    ${BACKUP_DATABASE_NAME} >"${targetDir}/mediawiki.sql"
