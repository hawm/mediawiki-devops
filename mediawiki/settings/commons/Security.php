<?php
# Changing this will log out all existing sessions.
$wgAuthenticationTokenVersion = "1";
$wgSecretKey = getenv('WIKI_SECRET');
$wgForceHTTPS = true;
