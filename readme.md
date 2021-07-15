# Installation
1. Clone this repo to server
2. Comment the `LocalSettings.php` volume in `docker-compose.yml`
3. Run `docker-compose up -d` to start all container
4. Following [Run_the_installation_script](https://www.mediawiki.org/wiki/Manual:Installing_MediaWiki#Run_the_installation_script) to install MediaWiki but you don't have to download the `LocalSettings.php`, we use the prepare one `mymw/Localsetting.php` instead
5. Uncomment `LocalSettings.php` volume(see step 2)
6. Recreate the `mediawiki` container  
    `docker-compose up -d mediaiwki`
6. Manual complete extensions installation (optional)
7. All done

# Extensions & Skins
Place extension at `mymw/extensions` and skin at `mymw/skins`, how to load extension/skin is no different see below **Configurations** section.

# Configurations
Configurations are split `LocalSettings.php` to different PHP file under `mymw/settings`. 

For load our extension/skin under`mymw/extensions` please don't using the `Extension/Skin.php` under `mymw/settings`, create a new PHP file under the folder instead.

See `mymw/LocalSettings.php` for detail.


# Backup & Restore

## Configuration
`.env` store all our instance sensitive config, manually backup it.

## Application Data
All data volumes are mount into `manager` container, and bind mount `backups` folder for saving backup to host, see the `manager` service in `docker-compose.yml` for detail.

### MediaWiki

#### backup

```sh
docker-compose run --rm manager tar cvf /var/mybackups/mediawiki-$(date --utc +%Y%m%d%H%M%S).tar -C /var/mediawiki .
```

#### restore
```sh
docker-compose run --rm manager tar xvf /var/mybackups/mediawiki-${VERSION}.tar -C /var/mediawiki
```

### Let's Encrypt

#### backup

```sh
docker-compose run --rm manager tar cvf /var/mybackups/letsencrypt-$(date --utc +%Y%m%d%H%M%S).tar -C /var/traefik/letsencrypt .
```

#### restore

```sh
docker-compose run --rm manager tar xvf /var/mybackups/letsencrypt-${VERSION}.tar -C /var/traefik/letsencrypt
```

## Read More
https://docs.docker.com/storage/volumes/#backup-a-container