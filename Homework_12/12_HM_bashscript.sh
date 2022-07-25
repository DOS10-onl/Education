#!/bin/bash

# Создание файла в директории скрипта
Path=`pwd`
touch $Path/test.txt

# Using echo write the current date and time
echo "date">>$Path/test.txt
echo 'date'>>$Path/test.txt
echo `date`>>$Path/test.txt

# Define 3 variables
string="This is string" #string
ping=`ping 8.8.8.8`     #command
math=$((5*4))           #expression
let math1=5*4           #expression

# Write the output variables into file test.txt
echo $string>>$Path/test.txt    #output string
echo $math>>$Path/test.txt      #output math expression
echo $math1>>$Path/test.txt     #output math expression
ping 8.8.8.8 | tee -a $Path/test.txt > /dev/null       #output command ping
echo $string $math $math1 $ping       #output values of variables in one line
