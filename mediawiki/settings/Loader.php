<?php
# Load settings
foreach(glob(__DIR__ . "/commons/*.php") as $setting){
	require $setting;
}

# Load custom extension/skin
foreach(glob(__DIR__ . "/{skins,extensions}/*.php", GLOB_BRACE) as $setting){
	require $setting;
}

# Load debug
if (strtolower(getenv('WIKI_DEBUG')) === 'true'){
	foreach(glob(__DIR__ . "/debugs/*.php") as $setting){
		require $setting;
	}
}