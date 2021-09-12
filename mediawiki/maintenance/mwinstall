#!/bin/bash

echo "Input wiki admin username and password that should be create!"
read -r -p "Admin Username: " username
read -r -s -p "Admin Password: " password
echo
php "${MW_INSTALL_PATH}/maintenance/install.php" \
    --scriptpath=/ \
    --dbserver="${WIKI_DATABASE_HOST}" \
    --dbname="${WIKI_DATABASE_NAME}" \
    --dbuser="${WIKI_DATABASE_USER}" \
    --dbpass="${WIKI_DATABASE_PASSWORD}" \
    --pass="$password" \
    TestWiki \
    "$username"
