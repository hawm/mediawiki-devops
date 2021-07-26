<?php
## UPO means: this is also a user preference option

$wgEnableEmail = true;
$wgEmailConfirmToEdit = true;
$wgEmailAuthentication = true;
$wgPasswordSender = "wiki@postman.ssgkc.cn";

$wgEnotifUserTalk = false; # UPO
$wgEnotifWatchlist = false; # UPO
$wgEnableUserEmail = false; # UPO

$wgSMTP = [
    'host' => getenv('MW_SMTP_HOST'),
    'port' => getenv('MW_SMTP_PORT'),
    'auth' => true,
    'username' => getenv('MW_SMTP_USERNAME'),
    'password' => getenv('MW_SMTP_PASSWORD')
];