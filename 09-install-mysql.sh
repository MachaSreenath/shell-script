#!/bin/bash

id=$(id -u)

if [ $id -ne 0 ]; then
   echo "ERROR: Please run this script as root"
   exit 1 # you can give other than 0
else
   echo "you are a root user"
fi #fi means reverse of if,indicating condition end


yum install mysql -y

if [ $? -ne 0 ]; 
then
    echo "ERROR: Failed to install mysql"
    exit 1
else
    echo "mysql installed successfully"
fi

yum install git -y

if [ $? -ne 0 ]; 
then
    echo "ERROR: Failed to install git"
    exit 1
else
    echo "git installed successfully"
fi