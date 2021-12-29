<?php
## UPO means: this is also a user preference option

$wgEnableEmail = true;
$wgEmailConfirmToEdit = true;
$wgEmailAuthentication = true;
$wgPasswordSender = getenv('WIKI_PASSWORD_SENDER_EMAIL');
$wgEmergencyContact = getenv('WIKI_EMERGENCY_CONTACT_EMAIL');

$wgEnotifUserTalk = false; # UPO
$wgEnotifWatchlist = false; # UPO
$wgEnableUserEmail = false; # UPO

$wgSMTP = [
    'host' => getenv('SMTP_HOST'),
    'port' => getenv('SMTP_PORT'),
    'auth' => strtolower(getenv('SMTP_AUTH')) === 'true',
    'username' => getenv('SMTP_USERNAME'),
    'password' => getenv('SMTP_PASSWORD')
];
