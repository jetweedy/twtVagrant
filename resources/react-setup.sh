#!/usr/bin/env bash

# https://www.tutorialspoint.com/reactjs/reactjs_jsx.htm
cd /var/www
sudo npm install npm-watch
sudo npm install nodemon -g
sudo npx create-react-app preactice
cd /var/www/preactice
nodemon -L
#npm start
