FROM php:7.2-fpm

WORKDIR /var/www/html
COPY . .

RUN apt-get update -q -y \
    && apt-get install -q -y --no-install-recommends \
    ca-certificates \
    wget \
    zip \
    netcat \
    unzip \
    acl \
    sudo \
    git 
RUN docker-php-ext-install pdo pdo_mysql mysqli 
RUN wget https://getcomposer.org/download/1.10.15/composer.phar
RUN php composer.phar install
# RUN composer install --prefer-dist
RUN pwd
RUN ls -la
# RUN chmod +x /var/www/html/entrypoint.sh
# CMD ["/bin/sh", "-c", "/var/www/html/entrypoint.sh"]
RUN ["chmod", "755", "./entrypoint.sh"]
ENTRYPOINT ["./entrypoint.sh"]