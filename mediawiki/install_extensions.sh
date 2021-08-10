#!/bin/sh
# Install extension by Composer
composer update --no-dev
# Install extension by git
git clone --depth 1 --single-branch --branch REL1_36 \
    $GITHUB_MIRROR/wikimedia/mediawiki-extensions-Lockdown.git \
    $MW_INSTALL_PATH/extensions/Lockdown
