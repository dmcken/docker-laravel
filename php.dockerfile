# PHP with apache on Debian 11
FROM php:8.2.20-apache-bullseye

RUN useradd --user-group laravel
RUN mkdir -p /var/www/html
RUN chown -R laravel:laravel /var/www/html

RUN docker-php-ext-install pdo pdo_mysql

USER laravel
