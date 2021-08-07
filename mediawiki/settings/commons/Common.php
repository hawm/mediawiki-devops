<?php

## Uncomment this to disable output compression
# $wgDisableOutputCompression = true;

$wgSitename = getenv('WIKI_NAME');

## The URL base path to the directory containing the wiki;
## defaults for all runtime URL paths are based off of this.
## For more information on customizing the URLs
## (like /w/index.php/Page_title to /wiki/Page_title) please see:
## https://www.mediawiki.org/wiki/Manual:Short_URL
$wgScriptPath = "";
$wgArticlePath = "/title/$1";

## The protocol and server name to use in fully-qualified URLs
$wgServer = '//'.getenv('WIKI_HOST');
## when using a self-signed certificate on development environment,
## https url cause VistualEditor curl error: 60.
$wgCanonicalServer = 'https:'. $wgServer;

## The URL path to static resources (images, scripts, etc.)
$wgResourceBasePath = $wgScriptPath;


$wgLocaltimezone = "Asia/Shanghai";
date_default_timezone_set( $wgLocaltimezone );
