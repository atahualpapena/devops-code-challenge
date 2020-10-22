FROM php:7.2-fpm-alpine

WORKDIR /var/www/html
COPY . .

RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
RUN composer install