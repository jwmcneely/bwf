#!/bin/bash

#additional tasks to cloned site to make it run
sudo mkdir -p /vagrant/Analytics/backend_v1/runtime
sudo mkdir -p /vagrant/Analytics/backend_v1/vendor
sudo mkdir -p /vagrant/Analytics/backend_v1/web/assets
sudo mkdir -p /vagrant/Analytics/backend_v1/web/uploads
sudo mkdir -p /vagrant/Analytics/wd_v1/runtime
sudo mkdir -p /vagrant/Analytics/wd_v1/vendor
sudo mkdir -p /vagrant/Analytics/wd_v1/web/assets
sudo mkdir -p /vagrant/Analytics/wd_v1/web/uploads
sudo mkdir -p /vagrant/Analytics/wd_v1/user/security/
sudo cp /vagrant/vagrant_provision/backend_v1_params/index.php /vagrant/Analytics/backend_v1/web/
sudo cp /vagrant/vagrant_provision/backend_v1_params/params.php /vagrant/Analytics/backend_v1/config/
sudo cp /vagrant/vagrant_provision/backend_v1_params/constants.php /vagrant/Analytics/backend_v1/lib/
sudo cp /vagrant/vagrant_provision/wd_v1_params/index.php /vagrant/Analytics/wd_v1/web/
sudo cp /vagrant/vagrant_provision/wd_v1_params/constants.php /vagrant/Analytics/wd_v1/lib/
sudo cp /vagrant/vagrant_provision/wd_v1_params/params.php /vagrant/Analytics/wd_v1/config/
sudo cp /vagrant/vagrant_provision/wd_v1_params/bootstrap.css.map /vagrant/Analytics/wd_v1/web/css
sudo cp /vagrant/vagrant_provision/wd_v1_params/bootstrap.css /vagrant/Analytics/wd_v1/web/css
sudo cp /vagrant/vagrant_provision/wd_v1_params/login.php /vagrant/Analytics/wd_v1/user/security/
sudo cp /vagrant/vagrant_provision/wd_v1_params/views_site_index.php /vagrant/Analytics/wd_v1/views/site/index.php