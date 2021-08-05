<?php
## UPO means: this is also a user preference option

$wgEnableEmail = true;
$wgEmailConfirmToEdit = true;
$wgEmailAuthentication = true;
$wgPasswordSender = getenv('WIKI_PASSWORD_SENDER_EMAIL');
$wgEmergencyContact = getenv('WIKI_EMERGENCY_CONTACT_EMAIL')

$wgEnotifUserTalk = false; # UPO
$wgEnotifWatchlist = false; # UPO
$wgEnableUserEmail = false; # UPO

$wgSMTP = [
    'host' => getenv('WIKI_SMTP_HOST'),
    'port' => getenv('WIKI_SMTP_PORT'),
    'auth' => getenv('WIKI_SMTP_AUTH'),
    'username' => getenv('WIKI_SMTP_USERNAME'),
    'password' => getenv('WIKI_SMTP_PASSWORD')
];