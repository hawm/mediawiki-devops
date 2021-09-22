# Bckup Configuration
Manually backup the `.env.$ENVNAME` file as you need.

# Backup MediaWiki Database & Upload

The `rclone` service in compose file provide the ability to backup. 

**NOTE**: The new backup will override the old one, only the latest backup on remote will be keep. 

**NOTE**: Don't forget to modify the backups config in the `.env.$ENVNAME` else the backup may not work, see `.env.dev` as a example.

## Automatic
To enabel periodicity automatic backup, Start with `rclone` profile:  
`./compose $ENVNAME --profile rclone up -d`

## Manually
We can also run backup as we need, run  
`./compose $ENVNAME run rclone sh /scripts/backup.sh`  
it will start backup immediately.

This can combine with the automatic backup, when automatic backup enable using the `exec` instead of `run` command.

# Restore
TODO
