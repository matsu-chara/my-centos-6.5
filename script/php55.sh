#!/bin/sh

yum install -y --enablerepo=remi,remi-php55 php php-opcache php-devel php-mbstring php-mcrypt php-mysqlnd php-pdo php-pecl-xdebug php-cli php-common php-pecl-apcu php-fpm

curl -sS https://getcomposer.org/installer | php
mv -f composer.phar /usr/local/bin/composer
