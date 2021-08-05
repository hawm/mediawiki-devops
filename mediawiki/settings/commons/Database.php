<?php
## Database settings
$wgDBtype = "mysql";
$wgDBserver = getenv('WIKI_DATABASE_HOST');
$wgDBname = getenv('WIKI_DATABASE_NAME');
$wgDBuser = getenv('WIKI_DATABASE_USER');
$wgDBpassword = getenv('WIKI_DATABASE_PASSWORD');

# MySQL specific settings
$wgDBprefix = "";