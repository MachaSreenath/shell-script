#!/bin/bash

id=$(id -u)

if [ $id -ne 0 ]; then
   echo "ERROR: Please run this script as root"
   exit 2 # you can give other than 0
else
   echo "you are a root user"
fi #fi means reverse of if,indicating condition end


yum install mysql -y