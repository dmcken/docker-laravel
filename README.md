# docker-laravel

A quick local setup for laravel meant for local development.


Run docker and build:

```
docker compose up -d --build
```
Run command line in container:
```
docker compose run --rm php /bin/sh
```
Create laravel project via composer:
```
docker compose run --rm composer create-project laravel/laravel .
# Which with helper command can be reduced to:
./d-composer create-project laravel/laravel .
# If you want to specify a laravel version:
./d-composer create-project --prefer-dist laravel/laravel:^10.0 .
```

## Containers:
* Database:
  * mysql - mysql database
* Application servers:
  * php:*-apache-* - Apache included version of PHP language.
    * composer
  * node - node.js

## Ports in use:
* php artisan serve -> 8000 (TCP)
* npm run dev -> 5173 (TCP)

Originally forked from: vshloda/docker-laravel
