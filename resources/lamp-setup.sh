#!/usr/bin/env bash

## https://www.tecmint.com/install-php-8-on-ubuntu/

# INSTALL PHP
sudo apt-get update
sudo apt-get upgrade
sudo apt install  ca-certificates apt-transport-https software-properties-common
echo "\n" | sudo apt-add-repository ppa:ondrej/php
sudo apt update
sudo apt install -y php8.0 libapache2-mod-php8.0
sudo apt install libapache2-mod-php php-mysql
sudo apt-get install -y php-pear

# INSTALL APACHE
sudo apt-get install apache2 -y
sudo a2enmod rewrite
sudo service apache2 restart

# INSTALL MSQL
#export DEBIAN_FRONTEND=noninteractive
#sudo apt-get install -y mysql-server
#sudo mysql < /vagrant/setup.sql

