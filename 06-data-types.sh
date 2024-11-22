#!/bin/bash

NUMBER1=$1
NUMBER2=$2
NUMBER3=$3

SUM=$(($NUMBER1+$NUMBER2+$NUMBER3))

echo "Total:: $SUM"

echo "how many args passed: $#"

echo "all args passed: $@"

echo "first arg passed: $1"

echo "script name: $0"