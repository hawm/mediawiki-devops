<?php

$wgJobTypeConf['default'] = [
    'class'          => 'JobQueueRedis',
    'redisServer'    => getenv('WIKI_REDIS_HOST').':'.getenv('WIKI_REDIS_PORT'),
    'redisConfig'    => [],
    'claimTTL'       => 3600,
    'daemonized'     => true
 ];

$wgRunJobsAsync = true;
$wgJobRunRate = 10;