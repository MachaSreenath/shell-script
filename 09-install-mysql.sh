#!/bin/bash

id=$(id -u)

if [ $id -ne 0 ]; then
   echo "ERROR: Please run this script as root"
else
   echo "you are a root user"
fi


yum install mysql -y