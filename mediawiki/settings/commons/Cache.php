<?php
$wgObjectCaches['redis'] = [
    'class' => 'RedisBagOStuff',
    'servers' => ['db-redis:6379'],
    'persistent' => true,
];
$wgMainCacheType = 'redis';
$wgCacheDirectory = "$IP/cache";
