#!/bin/bash

#install and run composer
cd ~
curl -sS https://getcomposer.org/installer -o composer-setup.php
sudo php composer-setup.php --install-dir=/usr/local/bin --filename=composer
sudo composer global require "fxp/composer-asset-plugin:~1.2"
cd /vagrant/Analytics/backend_v1
composer update
cd /vagrant/Anaylitics/wd_v1
composer update