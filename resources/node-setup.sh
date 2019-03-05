#!/usr/bin/env bash

# INSTALL nodejs
sudo apt-get install -y build-essential checkinstall libssl-dev

sudo apt-get install npm -y
#sudo apt-get install nodejs -y
#sudo apt-get install nodejs-legacy -y
sudo npm cache clean -f
sudo npm install -g n
sudo n latest

cp /vagrant/nodeHelloWorld.js /var/www/nodeHelloWorld.js
