#!/bin/bash

SOURCE_DIR="/tmp/shellscripts-logs"

R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

if [ ! -D $SOURCE_DIR ]; # ! denotes opposite
then
    echo -e "$R Source directory: $SOURCE_DIR does not exists. $N"
fi

FILES_TO_DELETE=$(find $SOURCE_DIR -type f -mtime +10 -name "*.log")

while IFS= read -r line #IFS stands for Internal Field Separator
do
    echo -e "$R Deleting files:$N $line"
    rm -rf $line 
    echo -e "$Y....files deleted $N"
done <<< $FILES_TO_DELETE