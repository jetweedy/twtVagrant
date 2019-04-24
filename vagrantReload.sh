#!/bin/bash

cd ./box/vagrant
vagrant reload --provision
vagrant up
vagrant ssh


