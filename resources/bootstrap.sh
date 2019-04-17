#!/usr/bin/env bash

sudo apt-get update -y
sudo apt-get install git -y
sudo apt-get install zip -y
sudo apt-get install unzip -y
sudo apt-get install dos2unix -y

sudo dos2unix /vagrant/mariadb-setup.sh
sudo dos2unix /vagrant/node-setup.sh
sudo dos2unix /vagrant/apache-setup.sh
sudo dos2unix /vagrant/lamp-setup.sh
sudo dos2unix /vagrant/python-setup.sh
sudo dos2unix /vagrant/setup.sql

#sudo bash /vagrant/mariadb-setup.sh
#sudo bash /vagrant/node-setup.sh
#sudo bash /vagrant/apache-setup.sh
#sudo bash /vagrant/lamp-setup.sh
#sudo bash /vagrant/python-setup.sh
