# Installation

For extensions provide a composer package, just add it to `mediawiki/composer.local.json`:
```json
{
    "require": {
        "mediawiki/sub-page-list": "~1.4",
        "mediawiki/semantic-media-wiki": "*"
    }
}
```
If extension do not provide a composer package, you may add it to repository manually first:
```json
{
    "repositories": [
    {
      "type": "package",
      "package": {
        "name": "mediawiki/lockdown",
        "type": "mediawiki-extension",
        "version": "1.0",
        "dist": {
          "url": "https://github.com.cnpmjs.org/wikimedia/mediawiki-extensions-Lockdown/archive/refs/heads/REL1_36.zip",
          "type": "zip"
        }
      }
    },
    ],
    "require": {
        "mediawiki/lockdown": "1.0",
    }
}
```

If the extension do not provide a composer package, but need composer dependencies, add somthing like this:
```json
{
    "extra": {
        "merge-plugin": {
            "include": [
                "extensions/TemplateStyles/composer.json"
            ]
        }
    }
}
```

references:
- https://www.mediawiki.org/wiki/Composer
- https://www.mediawiki.org/wiki/Composer/For_extensions
- https://getcomposer.org/doc/04-schema.md#repositories

