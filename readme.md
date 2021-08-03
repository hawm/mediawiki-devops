# Installation

1. Clone this repo to server
2. Comment the `LocalSettings.php` volume in `docker-compose.yml` under mediawiki service
3. Run `docker-compose up -d` to start all container
4. RUN `./install.sh USERNAME PASSWORD` to install
5. Uncomment `LocalSettings.php` volume(see step 2)
6. Recreate the `mediawiki` service by run `docker-compose up -d mediawiki`
7. Manual complete extensions installation (optional)
8. All done

# Extensions & Skins

Place extension at `mediawiki/extensions` and skin at `mediawiki/skins`, how to load extension/skin is no different please see below **Configurations** section.

# Configurations

Configurations are split single `LocalSettings.php` to multiple PHP file under `mediawiki/settings`.

See `mediawiki/LocalSettings.php` for detail.

# Backup & Restore

## Configuration

`.env` store all our instance sensitive config, manually backup it.

## MediaWiki Database & Upload

### backup & restore

- docker-compose.backup.yml
- https://github.com/lobaro/restic-backup-docker
- https://restic.readthedocs.io/en/stable/
- https://mariadb.com/kb/en/full-backup-and-restore-with-mariabackup/#restoring-the-backup
