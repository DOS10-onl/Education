#!/bin/bash

#Check Myfolder and create it if it's not exist
echo "Check Myfolder and create it if it's not exist"
sleep 2
Path=`pwd`
ls -a | grep Myfolder > /dev/null 2>&1
if [ $? -eq 0 ]; then
	echo "The directory "Myfolder" is already exist"
else
	var=1
	mkdir Myfolder > /dev/null 2>&1
	echo "Directory Myfolder is created now"
fi

#Creating files if dir was created now
if [ $var -eq 1 ] 1>/dev/null 2>&1 ; then
	#Create and fill file1
	sleep 1
	echo "Creating file1.txt"
	sleep 2
	ls -a | grep Myfolder/file1* > /dev/null 2>&1
	if [ $? -eq 0 ]; then
		echo "" > /dev/null
	else
		touch Myfolder/file1.txt
		echo "Hello string" >> Myfolder/file1.txt
		date >> Myfolder/file1.txt
	fi

	#Create and change permission file2
	sleep 1
	echo "Create file2.txt and change its permission to 777"
	sleep 2
	ls -a | grep Myfolder/file2* > /dev/null 2>&1
	if [ $? -eq 0 ]; then
		echo "" > /dev/null
	else
        	touch Myfolder/file2.txt
        	chmod 777 Myfolder/file2.txt
	fi

	#Create and fill file3 with random
	sleep 1
	echo "Create file3.txt and add one random string"
	sleep 2
	ls -a | grep Myfolder/file3* > /dev/null 2>&1
	if [ $? -eq 0 ]; then
		echo "" > /dev/null
	else
        	touch Myfolder/file3.txt
        	head -c 30 /dev/urandom >> Myfolder/file3.txt
	fi

	#Create file4 and file5
	sleep 1
	echo "Create file4.txt and file5.txt"
	touch Myfolder/file4.txt Myfolder/file5.txt
	sleep 2
	echo "Everything is done"
	sleep 1
	echo "Listing files in Myfolder"
	ls -alh $Path/Myfolder
else
echo "Listing files in Myfolder"
sleep 1
ls -alh $Path/Myfolder
fi
