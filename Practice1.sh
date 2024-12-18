#!/bin/bash

echo "enter file name"
read file_name

# if [ -f "$file_name" ]; 
# then
#     wordcount=$( wc -w < "$file_name" )
#     echo "word count is $wordcount"
# else
#     echo "the file $file_name is not found"
#     exit 1
# fi

if [ ! -f $file_name ] 
then
    echo "the file $file_name is not found"
else
    echo "the file $file_name is found"
    wordcount=$(wc -w < "$file_name")
    echo "...and this file contains the words inside it is: $wordcount"
fi
