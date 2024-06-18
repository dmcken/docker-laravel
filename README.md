# docker-laravel

A quick local setup for laravel meant for local developement.


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

Originally forked from: vshloda/docker-laravel
