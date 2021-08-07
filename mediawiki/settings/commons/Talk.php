<?php

$talkNS = [
	NS_TALK,
	NS_USER_TALK,
	NS_PROJECT_TALK,
	NS_FILE_TALK,
	NS_MEDIAWIKI_TALK,
	NS_TEMPLATE_TALK,
	NS_HELP_TALK,
	NS_CATEGORY_TALK,
];

# Disable all core TALK namespaces
foreach ($talkNS as $ns) {
	$wgNamespaceProtection[$ns] = ['nobody'];
}


# Remove tab/link
$wgHooks['SkinTemplateNavigation::Universal'][] = function ($template, &$links) {
	unset($links['user-menu']['mytalk']);
	foreach ($links['namespaces'] as $k => $v) {
		if (preg_match('/[Tt]alk$/', $k)) {
			unset($links['namespaces'][$k]);
		}
	}
};
