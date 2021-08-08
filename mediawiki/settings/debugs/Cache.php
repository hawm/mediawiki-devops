<?php

$wgCachePages = false;
$wgMainCacheType = CACHE_NONE;
$wgSessionCacheType = 'redis';
$wgMessageCacheType = $wgMainCacheType;
$wgParserCacheType = $wgMainCacheType;
$wgLanguageConverterCacheType = $wgMainCacheType;