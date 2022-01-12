#!/bin/bash

echo "Input wiki admin username and password that should be create!"
read -r -p "Admin Username: " username
read -r -s -p "Admin Password: " password
echo
echo "Start installation!"
echo 
php "${MW_INSTALL_PATH}/maintenance/install.php" \
    --confpath=/tmp \
    --conf=/tmp \
    --scriptpath=/ \
    --dbserver="${MARIADB_HOST}" \
    --dbname="${MARIADB_DATABASE}" \
    --dbuser="${MARIADB_USER}" \
    --dbpass="${MARIADB_PASSWORD}" \
    --pass="$password" \
    TestWiki \
    "$username"
