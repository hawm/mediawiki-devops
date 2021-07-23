<?php
$wgMainCacheType = CACHE_MEMCACHED;
$wgMemCachedServers = [
    "memcached:11211"
];
$wgCacheDirectory="$IP/cache";