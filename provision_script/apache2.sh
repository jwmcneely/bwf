#!/bin/bash

#install and configure apache2
sudo apt-get install -y apache2
sudo cp /vagrant/vagrant_provision/apana.conf /etc/apache2/sites-available/apana.conf
sudo chmod 666 /etc/apache2/sites-available/apana.conf
sudo ln -s /etc/apache2/sites-available/apana.conf /etc/apache2/sites-enabled/apana.conf
sudo mv /etc/apache2/apache2.conf /etc/apache2/apache2_orig.conf
sudo cp /vagrant/vagrant_provision/apache2.conf /etc/apache2/apache2.conf
sudo mkdir /vagrant/Analytics/ssl
sudo cp /vagrant/vagrant_provision/apana.us.* /vagrant/Analytics/ssl/
sudo cp /vagrant//vagrant_provision/gd_bundle-g2-g1.crt /vagrant/Analytics/ssl/
sudo a2enmod ssl
sudo a2enmod rewrite
sudo service apache2 reload