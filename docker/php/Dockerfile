FROM php:7.3.7-fpm-alpine
LABEL maintainer "your-name"

ARG TZ
ENV COMPOSER_ALLOW_SUPERUSER 1
ENV COMPOSER_HOME /composer

RUN set -eux
RUN  apk add --update-cache --no-cache --virtual=.build-dependencies tzdata
RUN  cp -r /usr/share/zoneinfo/${TZ} /etc/localtime
RUN  apk del .build-dependencies
RUN  docker-php-ext-install bcmath pdo_mysql
RUN  curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/bin --filename=composer
RUN  composer config -g repos.packagist composer https://packagist.jp
RUN  composer global require hirak/prestissimo

