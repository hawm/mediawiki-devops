<?php

if (strtolower(getenv('WIKI_DISABLE_CACHE')) === 'true'){
    $wgCachePages = false;
    $wgMainCacheType = CACHE_NONE;
    $wgSessionCacheType = 'redis';
    $wgMessageCacheType = $wgMainCacheType;
    $wgParserCacheType = $wgMainCacheType;
    $wgLanguageConverterCacheType = $wgMainCacheType;
}
