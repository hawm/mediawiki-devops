#!/bin/sh

php ${MW_INSTALL_PATH}/maintenance/install.php \
    --confpath=/tmp \
    --dbserver=${WIKI_DATABASE_HOST} \
    --dbname=${WIKI_DATABASE_NAME} \
    --installdbuser=${WIKI_DATABASE_USER}\
    --installdbpass=${WIKI_DATABASE_PASSWORD} \
    --pass=$2 \
    MEDIAWIKI \
    $1
