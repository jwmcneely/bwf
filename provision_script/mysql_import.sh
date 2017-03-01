#!/bin/bash

#populate mysql with dev data
cat /vagrant/vagrant_provision/mysql/create_databases.sql | mysql -uroot -prootpw
cat /vagrant/vagrant_provision/mysql/db_conf_dev1.sql | mysql -uroot -prootpw db_conf
cat /vagrant/vagrant_provision/mysql/db_flow_dev1.sql | mysql -uroot -prootpw db_flow
cat /vagrant/vagrant_provision/mysql/db_raw_dev1.sql | mysql -uroot -prootpw db_raw
cat /vagrant/vagrant_provision/mysql/db_stats_dev1.sql | mysql -uroot -prootpw db_stats