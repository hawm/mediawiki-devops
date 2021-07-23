<?php  

# Disable all core TALK namespaces
$wgNamespaceProtection[NS_TALK] = ['everyone'];
$wgNamespaceProtection[NS_USER_TALK] = ['everyone'];
$wgNamespaceProtection[NS_PROJECT_TALK] = ['everyone'];
$wgNamespaceProtection[NS_FILE_TALK] = ['everyone'];
$wgNamespaceProtection[NS_MEDIAWIKI_TALK] = ['everyone'];
$wgNamespaceProtection[NS_TEMPLATE_TALK] = ['everyone'];
$wgNamespaceProtection[NS_HELP_TALK] = ['everyone'];
$wgNamespaceProtection[NS_CATEGORY_TALK] = ['everyone'];

# remove page action
$wgHooks['SkinTemplateNavigation'][] = 'removeTalkAction';
function removeTalkAction( &$skin, &$links) {  
	unset( $links['namespaces']['talk'] );
	return true;
}

# remove personal url
$wgHooks['PersonalUrls'][] = 'removeTalkUrl';
function removeTalkUrl( &$urls, $title, $skin) {
	unset( $urls['mytalk'] );
	unset( $urls['anontalk'] );
	return true;
}