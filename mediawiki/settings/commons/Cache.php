<?php
$wgObjectCaches['redis'] = [
    'class' => 'RedisBagOStuff',
    'servers' => [
        getenv('REDIS_HOST').':'.getenv('REDIS_PORT')
    ],
    'persistent' => true,
];
$wgMainCacheType = 'redis';
$wgCacheDirectory = "$IP/cache";
