FROM php:7.2-fpm

WORKDIR /var/www/html
COPY . .

RUN docker-php-ext-install pdo pdo_mysql
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
RUN apt-get update -q -y \
    && apt-get install -q -y --no-install-recommends \
    ca-certificates \
    curl \
    acl \
    sudo \
    git 
RUN apt install zip unzip
RUN composer --version
RUN composer install --prefer-dist
RUN pwd
RUN ls -la
# RUN chmod +x /var/www/html/entrypoint.sh
# CMD ["/bin/sh", "-c", "/var/www/html/entrypoint.sh"]
RUN ["chmod", "755", "./entrypoint.sh"]
ENTRYPOINT ["./entrypoint.sh"]