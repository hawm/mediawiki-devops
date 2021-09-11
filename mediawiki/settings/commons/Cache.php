<?php
$wgObjectCaches['redis'] = [
    'class' => 'RedisBagOStuff',
    'servers' => [
        getenv('WIKI_REDIS_HOST').':'.getenv('WIKI_REDIS_PORT')
    ],
    'persistent' => true,
];
$wgMainCacheType = 'redis';
$wgCacheDirectory = "$IP/cache";
