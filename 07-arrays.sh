#!/bin/bash

FRUITS=("apple" "banana" "mango")

echo "print fruits: ${FRUITS[0]}"

echo "print fruits: $FRUITS[@]"

echo "print array length : ${#FRUITS[@]}"