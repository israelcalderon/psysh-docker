FROM php:7.4-cli
RUN apt-get update && apt-get install -y git zip unzip libsqlite3-dev libicu-dev libzip-dev
RUN docker-php-ext-install zip \
    && docker-php-ext-install intl \
    && docker-php-ext-install pdo_sqlite \
    && docker-php-ext-install pcntl \
    && docker-php-ext-enable pdo_sqlite
RUN curl -sS https://getcomposer.org/installer | php
RUN mv composer.phar /usr/local/bin/composer
RUN composer g require symfony/event-dispatcher \
    && composer g require symfony/lock \
    && composer g require symfony/process \
    && composer g require psr/log \
    && composer g require hoa/console \
    && composer g require psy/psysh:@stable \
    && ln -s /root/.composer/vendor/bin/psysh /usr/local/bin/psysh
ENTRYPOINT [ "psysh" ]