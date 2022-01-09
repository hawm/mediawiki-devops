<?php
## Database settings
$wgDBtype = "mysql";
$wgDBserver = getenv('MARIADB_HOST').':'.getenv('MARIADB_PORT');
$wgDBname = getenv('MARIADB_DATABASE');
$wgDBuser = getenv('MARIADB_USER');
$wgDBpassword = getenv('MARIADB_PASSWORD');
$wgDBadminuser = $wgDBuser;
$wgDBadminpassword = $wgDBpassword;
# MySQL specific settings
$wgDBprefix = "";
