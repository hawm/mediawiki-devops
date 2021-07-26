<?php  

# Disable all core TALK namespaces
$wgNamespaceProtection[NS_TALK] = ['nobody'];
$wgNamespaceProtection[NS_USER_TALK] = ['nobody'];
$wgNamespaceProtection[NS_PROJECT_TALK] = ['nobody'];
$wgNamespaceProtection[NS_FILE_TALK] = ['nobody'];
$wgNamespaceProtection[NS_MEDIAWIKI_TALK] = ['nobody'];
$wgNamespaceProtection[NS_TEMPLATE_TALK] = ['nobody'];
$wgNamespaceProtection[NS_HELP_TALK] = ['nobody'];
$wgNamespaceProtection[NS_CATEGORY_TALK] = ['nobody'];

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