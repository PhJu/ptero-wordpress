#!/bin/bash

php-fpm --fpm-config /home/container/php-fpm/php-fpm.conf --daemonize
nginx -c /home/container/nginx/nginx.conf -p /home/container/
echo "Nginx and PHP-FPM started"
