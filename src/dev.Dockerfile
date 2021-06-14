FROM php:7.2.5-apache

RUN docker-php-ext-install \
    pdo_mysql \
    && a2enmod \
    rewrite

CMD php artisan serve --host=0.0.0.0    