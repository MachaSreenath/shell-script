#!/bin/bash
# this is the program where we can pass the names in the time of execution 
# sh <filename.sh> ram rahim 
# it takes ram and rahim if we give 1 and 2, like that we can give no. of names
# this is known as "arguments"
PERSON1=$1
PERSON2=$2

echo "$PERSON1 : hi $PERSON2"
echo "$PERSON2 : hi $PERSON1"
echo "$PERSON1 : how are you"
echo "$PERSON2 : i am good"
echo "$PERSON1 : good"