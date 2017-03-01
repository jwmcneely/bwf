#!/bin/bash

#install php5.6
sudo apt-get install -y software-properties-common
sudo add-apt-repository -y ppa:ondrej/php
sudo apt-get update
sudo apt-get install -y php5.6
sudo apt-get install -y php5.6-json
sudo apt-get install -y php5.6-gd
sudo apt-get install -y php5.6-mcrypt 
sudo apt-get install -y php5.6-mbstring 
sudo apt-get install -y php5.6-curl 
sudo apt-get install -y php5.6-xml
sudo apt-get install -y php5.6-mysql
sudo phpenmod mcrypt
sudo phpenmod mbstring
sudo phpenmod curl
sudo phpenmod xml