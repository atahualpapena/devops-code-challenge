#!/bin/bash

php artisan migrate 
php artisan db:seed
php artisan serve --port=80