#!/usr/bin/env bash

### INSTALL MSQL
export DEBIAN_FRONTEND=noninteractive
sudo apt-get install -y mariadb-server
sudo mysql < /vagrant/setup.sql


