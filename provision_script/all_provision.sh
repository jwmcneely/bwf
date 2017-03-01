#!/bin/bash

sudo apt-get update -y

#install some general tools
sudo apt-get install -y curl git unzip

#clone apana analytics site into machine
sudo /vagrant/vagrant_provision/provision_script/git_analytics.sh

#install and configure apache2
sudo /vagrant/vagrant_provision/provision_script/apache2.sh

#install mysql 5.7
sudo /vagrant/vagrant_provision/provision_script/mysql.sh

#install php5.6
sudo /vagrant/vagrant_provision/provision_script/php.sh

#additional tasks to cloned site to make it run
sudo /vagrant/vagrant_provision/provision_script/add_tasks.sh

#install some independent packages
sudo /vagrant/vagrant_provision/provision_script/ind_pkg.sh

#populate mysql with dev data
sudo /vagrant/vagrant_provision/provision_script/mysql_import.sh

#install and run composer
sudo /vagrant/vagrant_provision/provision_script/composer.sh