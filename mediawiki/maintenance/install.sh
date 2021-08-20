#!/bin/bash

echo "Input wiki admin username and password that should be create!"
read -p "Admin Username: " username
read -s -p "Admin Password: " password
echo
php ${MW_INSTALL_PATH}/maintenance/install.php \
    --confpath=/tmp \
    --server=${WIKI_HOST} \
    --scriptpath=/ \
    --dbserver=${WIKI_DATABASE_HOST} \
    --dbname=${WIKI_DATABASE_NAME} \
    --installdbuser=${WIKI_DATABASE_USER} \
    --installdbpass=${WIKI_DATABASE_PASSWORD} \
    --pass=$password \
    TestWiki \
    $username
