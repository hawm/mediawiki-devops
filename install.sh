#!/bin/bash
docker-compose exec wiki \
php maintenance/install.php \
--conf=/tmp \
--confpath=/tmp \
--dbserver=database \
--dbname=mediawiki \
--installdbuser=mediawiki \
--installdbpass=mediawiki \
--pass=$2 \
MEDIAWIKI \
$1

