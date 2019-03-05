# Triangle Web Tech Vagrant Box

## Overview

This folder contains scripts to set up a box for PHP, Python and/or NodeJS. You can install any or all of these programs in order to learn, play and even get started developing. It also has a very quick script for setting up MariaDB and creating a user and table called 'mydb' that can be accessed by each of these languages as needed.

This is a work in progress, and posted for casual practice and development environments only. It is NOT recommended that you use this box to do any serious development or create actual hosted environments for production websites.

## Setup and Use

1. Install [Vagrant](https://vagrantup.com) and [VirtualBox](https://www.virtualbox.org/) before proceeding.
2. If you're using Windows, install [Cygwin](https://www.cygwin.com/) to get better command line capabilities.
3. Download this project folder, name it whatever you like, and edit ./resources/Vagrantfile to give your box another name and/or forward its ports (and any others) to other ports on your machine. This one uses a default of 8380 for port 80 and 8480 for port 8080 (to run the Node sample). If this is the only box you're running, chances are the settings will work as-is. (The rest of these instructions will assume that you used 8380 and 8480.)
4. Run ./create.sh to build the base Linux environment. In Windows, you can do this by double-clicking the file. In OSX/Linux environments, you can cd into the directory in a terminal and run 'bash ./create.sh' from there. (You can do this in Windows too.)
5. When it's finished running, you'll automatically SSH into the new machine's command line. If you ever want to do this again, you can run ./vagrantSSH.sh. If the machine is down for any reason, you can run ./vagrantUp.sh to bring it up and SSH in.
6. Once in the command line, you can run any or all of the following to install the various pieces. For playing around, there's no harm in running all 5 of them:
```
cd /vagrant
./apache-setup.sh
./mariadb-setup.sh
./lamp-setup.sh
./python-setup.sh
./node-setup.sh
```    
7. To destroy the box at any time, wiping anything that's inside of the ./box/ folder (so be careful and save your work!) you can run ./destroy.sh.
8. To visit the demo pages for each of PHP, Python CGI and NodeJS, try these links:
  1. http://localhost:8380/phpHelloWorld.php
  2. http://localhost:8380/pythonHelloWorld.py
  3. http://localhost:8480/ (note: you'll have to run 'node nodeHelloWorld.js' first)
9. A database called 'mydb' with user 'mydb' and password 'mydb' has been created, but more can be created as you wish. To access your MySQL database in the command line with full admin permissions:
```
sudo mysql
```