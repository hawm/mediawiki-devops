<?php
$wgObjectCaches['redis'] = [
    'class'                => 'RedisBagOStuff',
    'servers'              => [ 'cache-redis:6379' ],
    'persistent'        => false,
];
$wgMainCacheType = 'redis';
$wgSessionCacheType = 'redis';
$wgMessageCacheType = 'redis';
$wgParserCacheType = 'redis';
$wgLanguageConverterCacheType = 'redis';
$wgCacheDirectory="$IP/cache";