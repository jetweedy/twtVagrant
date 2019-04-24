#!/usr/bin/env bash

cd /var/www
sudo npx create-react-app preactice
cd /var/www/preactice/src
rm *
echo "" > index.html
echo "import React from 'react';
import ReactDOM from 'react-dom';
import './index.css';" > index.js


<<COMMENT1

mkdir /var/www/reyakt
cd /var/www/reyakt

sudo npm cache clean --force
sudo npm init -y
mv /vagrant/package.json /var/www/reyakt/package.json
sudo npm install react react-dom --save 
# sudo npm install fsevents --save 

sudo npm install --save-dev @babel/core @babel/preset-env @babel/preset-env @babel/preset-es2015

sudo npm install babel-core --save-dev 
sudo npm install babel-loader --save-dev  
sudo npm install babel-preset-env --save-dev  
sudo npm install babel-preset-es2015 --save-dev  
sudo npm install babel-preset-react --save-dev  
sudo npm install html-webpack-plugin --save-dev 
sudo npm install webpack  --save
sudo npm install webpack-dev-server --save
sudo npm install webpack-cli  --save

mv /vagrant/webpack.config.js /var/www/reyakt/webpack.config.js
mv /vagrant/react-index.html /var/www/reyakt/index.html
mv /vagrant/react-App.js /var/www/reyakt/App.js
mv /vagrant/react-main.js /var/www/reyakt/main.js
mv /vagrant/.babelrc /var/www/reyakt/.babelrc

COMMENT1