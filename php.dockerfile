FROM php:8.2.20-apache-bullseye

# ADD ./php/www.conf /usr/local/etc/php-fpm.d/www.conf
RUN useradd --user-group laravel
RUN mkdir -p /var/www/html
RUN chown -R laravel:laravel /var/www/html
# ADD ./src-orig/ /var/www/html

#RUN chmod -R 777 /var/www/html/storage
#RUN chmod -R 777 /var/www/html/bootstrap/cache

RUN docker-php-ext-install pdo pdo_mysql

USER laravel
