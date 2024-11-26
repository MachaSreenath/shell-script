#!/bin/bash

DISK_USAGE=$(df -hT | grep -vE 'tmp|File')
DISK_THRESHOLD=1
message=""

while IFS= read line 
do
    usage=$(echo $line | awk '{print $6}' | cut -d % -f1)
    partition=$(echo $line | awk '{print $1}')
    if [ $usage is -ge $DISK_THRESHOLD ]
    then
        message+="High disk usage on $partition: $usage\n" 
    fi
done <<< "$DISK_USAGE"

echo -e "Message: $message"

echo "$message" | mail -s "High Disk Usage" sreenathshree9@gmail.com #tis is the email id to whom we have to sent.


#+= is used not to overright the previous message, it will append the new message.