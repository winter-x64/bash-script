#!/bin/bash

# this is a simple script to update and upgrade
sudo apt-get update

echo "update completed"

sudo apt-get full-upgrade -y

echo " "
echo "All set and ready to go!!!"