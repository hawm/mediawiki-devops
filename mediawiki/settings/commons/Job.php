<?php

$wgJobTypeConf['default'] = [
    'class'          => 'JobQueueRedis',
    'redisServer'    => 'db-redis:6379',
    'redisConfig'    => [],
    'claimTTL'       => 3600,
    'daemonized'     => true
 ];

 $wgRunJobsAsync = true;