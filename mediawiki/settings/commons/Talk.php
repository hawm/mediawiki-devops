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

$wgHooks['SkinTemplateNavigation::Universal'][] = function ($template, &$links) {
	unset($links['namespaces']['talk']);
	unset($links['user-menu']['mytalk']);
};

