#!/usr/bin/env bash

### INSTALL APACHE
sudo apt-get install apache2 -y
sudo a2enmod rewrite
sudo a2enmod cgi
sudo service apache2 restart
