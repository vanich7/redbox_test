FROM php:8.2-fpm

RUN apt-get update && apt-get install -y libpq-dev libzip-dev zip  && docker-php-ext-install pdo pdo_pgsql zip

RUN pecl install redis && docker-php-ext-enable redis

RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

WORKDIR /var/www/html

COPY app/composer.json .
RUN composer install --no-dev --optimize-autoloader

COPY app .

