#!/usr/bin/env bash

### INSTALL APACHE
sudo apt-get install apache2 -y
sudo a2enmod rewrite
sudo a2enmod cgi
cp /vagrant/000-default.conf /etc/apache2/sites-available/000-default.conf
sudo service apache2 restart
