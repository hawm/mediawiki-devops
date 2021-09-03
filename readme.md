# Installation

1. Clone this reop to local.
2. Run `docker-compose --env-file .env.dev run mediawiki mwinstall` to install MediaWiki.
3. Manually complete extensions installation if need.
4. Start by run `docker-compose -f docker-compose.yml -f docker-compose.dev.yml --env-file .env.dev up -d`.

# Extensions & Skins

Using Composer, see `composer.local.json`

# Configurations

Configurations are split single `LocalSettings.php` to multiple PHP file under `mediawiki/settings`.

See `mediawiki/LocalSettings.php` for detail.

# Backup & Restore

## Configuration

Manually backup the `.env` file which specify by the `--env-file` option.

## MediaWiki Database & Upload

### backup & restore

- https://github.com/lobaro/restic-backup-docker
- https://restic.readthedocs.io/en/stable/
- https://mariadb.com/kb/en/mysqldump/#performance
