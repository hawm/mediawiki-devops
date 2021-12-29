<?php
## Database settings
$wgDBtype = "mysql";
$wgDBserver = getenv('MARIADB_HOST').':'.getenv('MARIADB_PORT');
$wgDBname = getenv('MARIADB_DATABASE_NAME');
$wgDBuser = getenv('MARIADB_DATABASE_USER');
$wgDBpassword = getenv('MARIADB_DATABASE_PASSWORD');
$wgDBadminuser = $wgDBuser;
$wgDBadminpassword = $wgDBpassword;
# MySQL specific settings
$wgDBprefix = "";
