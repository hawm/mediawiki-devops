#!/bin/bash

echo "Input wiki admin username and password that should be create!"
read -r -p "Admin Username: " username
read -r -s -p "Admin Password: " password
echo
php "${MW_INSTALL_PATH}/maintenance/install.php" \
    --scriptpath=/ \
    --dbserver="${MARIADB_HOST}" \
    --dbname="${MARIADB_DATABASE_NAME}" \
    --dbuser="${MARIADB_DATABASE_USER}" \
    --dbpass="${MARIADB_DATABASE_PASSWORD}" \
    --pass="$password" \
    TestWiki \
    "$username"
