FROM php:fpm-alpine

RUN apk add --no-cache $PHPIZE_DEPS
RUN pecl install xdebug 

RUN docker-php-ext-enable xdebug 
RUN docker-php-ext-install pdo pdo_mysql