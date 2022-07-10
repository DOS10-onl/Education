#!/bin/bash

#Syncronysing wanted folder from server to client on SSH

echo "Syncronysing folder from Server VM"

sudo -i

rsync -avzhe ssh vagrant@192.168.53.3:/home/vagrant/folder1/ /home/vagrant/syncro
