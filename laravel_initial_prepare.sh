#!/usr/bin/env sh

composer update
./laravel_db_refresh_and_seed.sh
./laravel_nodejs_install.sh
./laravel_nodejs_run_monitor.sh
