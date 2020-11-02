#!/usr/bin/env bash

# Composer install
composer install
composer update
npm install

#clear cache from spatie package
sudo php artisan cache:forget spatie.permission.cache && sudo php artisan cache:clear

# Config and cache
php artisan optimize:clear
