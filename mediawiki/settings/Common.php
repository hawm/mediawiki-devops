<?php

## Uncomment this to disable output compression
# $wgDisableOutputCompression = true;

$wgSitename = getenv('MW_NAME');

## The URL base path to the directory containing the wiki;
## defaults for all runtime URL paths are based off of this.
## For more information on customizing the URLs
## (like /w/index.php/Page_title to /wiki/Page_title) please see:
## https://www.mediawiki.org/wiki/Manual:Short_URL
$wgScriptPath = "";
$wgArticlePath = "/title/$1";

## The protocol and server name to use in fully-qualified URLs
$wgServer = '//'.getenv('MW_HOST');
$wgCanonicalServer = 'https:'. $wgServer;

## The URL path to static resources (images, scripts, etc.)
$wgResourceBasePath = $wgScriptPath;

# Site language code, should be one of the list in ./languages/data/Names.php
$wgLanguageCode = "zh-cn";