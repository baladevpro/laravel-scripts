#!/usr/bin/env sh

mv ./storage/framework/sessions/.gitignore ./keep.gitignore
rm -Rf ./storage/framework/sessions/*
mv ./keep.gitignore ./storage/framework/sessions/.gitignore

rm ./storage/logs/laravel.log

php artisan config:clear
php artisan route:clear
php artisan cache:clear
php artisan view:clear

./laravel_autoload.sh