FROM mediawiki:1.36

RUN pecl install redis && docker-php-ext-enable redis