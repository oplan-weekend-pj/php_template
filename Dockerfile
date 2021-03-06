FROM php:7.3-fpm-alpine

ARG TZ
ENV COMPOSER_ALLOW_SUPERUSER 1
ENV COMPOSER_HOME /composer

RUN set -eux && \
  apk add --update-cache --no-cache --virtual=.build-dependencies tzdata && \
  cp /usr/share/zoneinfo/${TZ} /etc/localtime && \
  apk del .build-dependencies && \
  docker-php-ext-install bcmath pdo_mysql && \
  apk add npm

COPY --from=composer:2.0.8 /usr/bin/composer /usr/bin/composer

ENV APP_ROOT /work
RUN mkdir -p $APP_ROOT
WORKDIR $APP_ROOT
COPY ./src ${APP_ROOT}
RUN composer install
RUN npm install
