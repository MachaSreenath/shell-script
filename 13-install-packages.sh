#!/bin/bash


ID=$(id -u)

VALIDATE(){
    if [ $1 -ne 0 ]
    then 
        echo "$2 .... is \e[31m Failed \e[0m"
    else
        echo "$2 ..... is \e[32m Success \e[0m"
    fi

}

if [ $ID -ne 0 ]
then
    echo -e "\e[31m ERROR:: Please run this script with root access \e[0m"
    exit 1 # you can give other than 0
else
    echo -e "\e[33m You are root user \e[0m"
fi # fi means reverse of if, indicating condition end

for package in $@
do
    yum list installed $package
    if [ $? -ne 0 ]
    then
        yum install $package -y
        VALIDATE $? "Installation of $package"

done
