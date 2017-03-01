#!/bin/bash

#install mysql 5.7
export DEBIAN_FRONTEND="noninteractive"
sudo apt-get install -y debconf-utils
sudo debconf-set-selections <<< "mysql-server mysql-server/root_password password rootpw"
sudo debconf-set-selections <<< "mysql-server mysql-server/root_password_again password rootpw"
sudo apt-get install -y mysql-server-5.7