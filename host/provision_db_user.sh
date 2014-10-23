#!/bin/bash

source ../config.sh
Project=$1
cd $VagrantDir
vagrant ssh -- /home/vagrant/projects/sh/guest/provision_db_user.sh $Project