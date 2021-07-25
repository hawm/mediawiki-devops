# Installation
1. Clone this repo to server
2. Comment the `LocalSettings.php` volume in `docker-compose.yml`
3. Run `docker-compose up -d` to start all container
4. RUN `./install.sh USERNAME PASSWORD` to install
5. Uncomment `LocalSettings.php` volume(see step 2)
6. Recreate the `wiki` container by run `docker-compose up -d wiki`
6. Manual complete extensions installation (optional)
7. All done

# Extensions & Skins
Place extension at `mediawiki/extensions` and skin at `mediawiki/skins`, how to load extension/skin is no different please see below **Configurations** section.

# Configurations
Configurations are split single `LocalSettings.php` to multiple PHP file under `mediawiki/settings`. 

See `mediawiki/LocalSettings.php` for detail.


# Backup & Restore

## Configuration
`.env` store all our instance sensitive config, manually backup it.

## Application Data
All data volumes are mount into `manager` container, and bind mount host `./backups` folder to container `/var/mybackups` for persist backup data, see the `manager` service in `docker-compose.yml` for detail.

### MediaWiki

#### backup

**Note the dot `.` at the end of command**

```sh
docker-compose run --rm manager tar cvf /var/mybackups/wiki-$(date --utc +%Y%m%d%H%M%S).tar -C /var/wiki .
```

#### restore
```sh
docker-compose run --rm manager tar xvf /var/mybackups/wiki-${VERSION}.tar -C /var/wiki
```

## Read More
https://docs.docker.com/storage/volumes/#backup-a-container