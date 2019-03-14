#!/usr/bin/env bash

# INSTALL PHP
echo "\n" | sudo apt-add-repository ppa:ondrej/php
sudo apt-get update -y
sudo apt-get install -y php7.1 php7.1-fpm php7.1-cli php7.1-dev php7.1-common php7.1-mbstring php7.1-gd php7.1-intl php7.1-xml php7.1-mysql php7.1-mcrypt php7.1-zip php7.1-sqlite3 php7.1-curl
sudo apt-get install -y libapache2-mod-php7.1
sudo apt-get install -y php-pear
sudo pecl install -y stats
sudo apt-get install -y phpunit
sudo apt-get install -y php7.1-imap
sudo apache2ctl graceful
sudo a2enmod proxy_fcgi setenvif
sudo a2enconf php7.1-fpm
sudo service apache2 restart
#sudo service apache2 reload

cp /vagrant/phpHelloWorld.php /var/www/html/phpHelloWorld.php