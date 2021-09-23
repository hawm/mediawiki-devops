Make sure you have already installed both Docker Engine and Docker Compose. 

#  Install
1. Clone this reop to local.
2. Create a `.env.$ENVNAME` file, `.env.dev` as a example.
3. Install MediaWiki  
   `docker-compose --env-file .env.$ENVNAME run mediawiki mwinstall`

# Uninstall
**NOTE**: Database and uploads will be delete, your local data will lost.

Stop and remove containers, networks and volumes:  
 `./compose $ENVNAME down --volumes`

# Start
`./compose $ENVNAME up -d`

# Stop
`./compose $ENVNAME stop`

# Upgrade
1. Update repo  
   `git pull`
2. Rebuild images and start  
   `./compose $ENVNAME up -d --build`

# SemanticMediaWiki
After installed and start or upgrade, you may see an error page about SemanticMediaWiki when you visit the site, it told you that
> Semantic MediaWiki was installed and enabled but is missing an appropriate upgrade key.

You may run  
`./compose $ENVNAME exec mediawiki mwupdate`  
to resolve it, that's a shourtcut for [`maintenance/update.php`](https://www.mediawiki.org/wiki/Manual:Update.php)

See also https://www.semantic-mediawiki.org/wiki/Help:Upgrade_key

# More  
- [Backup and Restore](./backup-and-restore.md)
- [About the `./compose` command](./compose.md)