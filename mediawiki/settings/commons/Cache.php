<?php
$wgObjectCaches['redis'] = [
    'class' => 'RedisBagOStuff',
    'servers' => ['db-redis:6379'],
    'persistent' => true,
];
$wgMainCacheType = 'redis';
$wgSessionCacheType = 'redis';
$wgMessageCacheType = 'redis';
$wgParserCacheType = 'redis';
$wgLanguageConverterCacheType = 'redis';
$wgCacheDirectory = "$IP/cache";
