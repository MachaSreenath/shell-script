#!/bin/bash

id=$(id -u)
timestamp=$(date +%F-%H-%M-%S)

R="\e[31m"
G="\e[32m"
N="\e[0m"


logfile=/tmp/$0-$timestamp.log

echo "script name: $0"

VALIDATE(){

if [ $1 -ne 0 ]; 
then
    echo -e "$R ERROR:$2....$N Failure"
    exit 1
else
    echo -e "$2..... $G Success $N"
fi

}

if [ $id -ne 0 ]; then
   echo "ERROR: Please run this script as root"
   exit 1 # you can give other than 0
else
   echo -e "\e[34m you are a root user $N"
fi #fi means reverse of if,indicating condition end


yum install mysql -y &>> $logfile

VALIDATE $? "Installing mysql"

yum install git -y &>> $logfile

VALIDATE $? "Installing git"