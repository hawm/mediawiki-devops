<?php

$wgJobTypeConf['default'] = [
    'class'          => 'JobQueueRedis',
    'redisServer'    => getenv('REDIS_HOST').':'.getenv('REDIS_PORT'),
    'redisConfig'    => [],
    'claimTTL'       => 3600,
    'daemonized'     => true
 ];

$wgRunJobsAsync = true;
$wgJobRunRate = 10;