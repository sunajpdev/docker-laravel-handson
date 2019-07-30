#!/bin/sh

# copy docker env 
cp env.example .env

# start docker
docker-compose up -d

# install laravel vender
docker-compose exec app composer install

# copy laravel env
docker-compose exec app cp .env.example .env

# set app key
docker-compose exec app php artisan key:generate



