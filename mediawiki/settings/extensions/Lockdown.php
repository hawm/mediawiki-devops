<?php

wfLoadExtension('Lockdown');

$wgSpecialPageLockdown['Export'] = ['sysop'];
$wgSpecialPageLockdown['Version'] = ['sysop'];
$wgSpecialPageLockdown['ApiSandbox'] = ['user'];