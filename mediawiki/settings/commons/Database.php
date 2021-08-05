<?php
## Database settings
$wgDBtype = "mysql";
$wgDBserver = "db-mariadb";
$wgDBname = getenv('WIKI_DATABASE_NAME');
$wgDBuser = getenv('WIKI_DATABASE_USER');
$wgDBpassword = getenv('WIKI_DATABASE_PASSWORD');

# MySQL specific settings
$wgDBprefix = "";