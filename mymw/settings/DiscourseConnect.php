<?php
wfLoadExtension( 'DiscourseConnect' );
$wgDiscourseConnectSecret = getenv('MW_DC_SECRET');
$wgDiscourseConnectEndpoint = getenv('MW_DC_ENDPOINT');