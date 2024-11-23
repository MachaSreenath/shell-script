#!/bin/bash


ID=$(id -u)


TIMESTAMP=$(date +%F-%H-%M-%S)
LOGFILE="/tmp/$0-$TIMESTAMP.log"

echo "Script started executing at $TIMESTAMP" &>> $LOGFILE


VALIDATE(){
    if [ $1 -ne 0 ]
    then 
        echo -e "$2 .... is \e[31m Failed \e[0m"
    else
        echo -e "$2 ..... is \e[32m Success \e[0m"
    fi
}

if [ $ID -ne 0 ]
then
    echo -e "\e[31m ERROR:: Please run this script with root access \e[0m"
    exit 1 #you can give other than 0
else
    echo -e "\e[33m You are root user \e[0m"
fi #fi means reverse of if, indicating condition end

#git postfix mysql net-tools

for package in $@
do
    yum list installed $package &>> $LOGFILE    #checks package is installed or not
    if [ $? -ne 0 ] #if not installed
    then
        yum install $package -y &>> $LOGFILE #install package
        VALIDATE $? "Installation of $package" #validate installation
    else
        echo -e "$package already installed, \e[33m skipping \e[0m"
    fi
done
