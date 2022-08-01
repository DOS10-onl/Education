#!/bin/bash

echo "Updating system...."
sleep 1 
apt update -y > /dev/null 2>&1
if apt update > /dev/null 2>&1; then
    echo "The system was updated succesfully"
else
    echo "Something gp wrong..."
fi
echo "Installing nginx and apache...."
sleep 1
apt-get install nginx -y > /dev/null 2>&1
systemctl stop nginx
apt-get install apache2 -y > /dev/null 2>&1
systemctl stop apache2
apt-get install iproute2 -y > /dev/null 2>&1
if apt-get install nginx && apt-get install apache2 > /dev/null 2>&1; then
    echo "Nginx and Apache2 installed succesfully"
else    
    echo "Something go wrong..."
fi
echo "Creating dir..."
sleep 1
mkdir /opt/nginx
mkdir /opt/apache2
echo "Delete the default config of NGINX and APACHE2"
sleep 1
rm /etc/nginx/nginx.conf
rm /etc/apache2/apache2.conf /etc/apache2/ports.conf /etc/apache2/sites-available/000-default.conf