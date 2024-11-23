#!/bin/bash


ID=$(id -u)

if [ $ID -ne 0 ]
then
    echo -e "\e[31m ERROR:: Please run this script with root access $N"
    exit 1 # you can give other than 0
else
    echo -e "\e[33m You are root user $N"
fi # fi means reverse of if, indicating condition end

echo "All the arguments passed: $@"
