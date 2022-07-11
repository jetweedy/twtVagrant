#!/usr/bin/env bash

### INSTALL Python
sudo apt-get install -y libmysqlclient-dev
sudo apt-get install python -y
sudo apt-get install -y python-pip python-dev
sudo pip install -y --upgrade pip
sudo pip install -y --upgrade setuptools
sudo pip install -y MySQL-python
sudo apt-get install python3 -y
sudo apt-get install -y python3-pip python3-dev
sudo apt install -y python3-mysqldb

sudo service apache2 restart

## https://stackoverflow.com/questions/44871139/how-do-i-run-python-cgi-script-on-apache2-server-on-ubuntu-16-04

cp /vagrant/pythonHelloWorld.py /var/www/html/pythonHelloWorld.py

