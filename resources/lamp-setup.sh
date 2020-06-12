#!/usr/bin/env bash


# INSTALL PHP
echo "\n" | sudo apt-add-repository ppa:ondrej/php
sudo apt-get update
sudo apt-get install -y php7.4 php7.4-fpm php7.4-cli php7.4-common php7.4-mbstring php7.4-gd php7.4-intl php7.4-xml php7.4-mysql php7.4-zip php7.4-sqlite3 php7.4-curl php-pear php7.4-dev libapache2-mod-php7.4

# INSTALL APACHE
sudo apt-get install apache2 -y
sudo a2enmod rewrite
sudo service apache2 restart

# INSTALL MSQL
#export DEBIAN_FRONTEND=noninteractive
#sudo apt-get install -y mysql-server
#sudo mysql < /vagrant/setup.sql

