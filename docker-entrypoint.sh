#!/bin/bash

mkdir -p  /usr/local/etc/conf.d/
env | sed "s/\(.*\)=\(.*\)/env[\1]='\2'/" > /usr/local/php-fpm-env.conf

exec php-fpm
