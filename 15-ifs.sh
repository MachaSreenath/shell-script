#!/bin/bash
file=/etc/passwd

R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

if [ ! -d $file ]; # ! denotes opposite
then
    echo -e "$R Source directory: $SOURCE_DIR does not exists. $N"
fi

while IFS= ":" read -r username password user_id group_id user_fullname home_dir
do 
    echo "username is : $username"
    echo "user_id : $user_id"
    echo "user_fullname : $user_fullname"
done < $file