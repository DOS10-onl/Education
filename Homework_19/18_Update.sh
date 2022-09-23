#!/bin/bash

echo "Updating system...."
sleep 1 
apt update -y > /dev/null 2>&1
if apt update > /dev/null 2>&1; then
    echo "The system was updated succesfully"
else
    echo "Something gp wrong..."
fi
echo "Installing nginx....."
sleep 1
apt-get install -y nginx > /dev/null 2>&1
systemctl stop nginx
apt-get install -y expect > /dev/null 2>&1
if apt-get install -y nginx && apt-get install -y expect > /dev/null 2>&1; then
    echo "Nginx installed succesfully"
else    
    echo "Something go wrong..."
fi
echo "Creating dir..."
sleep 1
mkdir /opt/nginx
mkdir /etc/nginx/cert
echo "Delete the default config of NGINX..."
sleep 1
rm /etc/nginx/nginx.conf
rm /etc/hosts