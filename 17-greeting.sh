#!/bin/bash

NAME=""
WISHES="Good Morning"
EXTRA="Have a nice day"

USAGE(){
    echo "USGAE:: $(basename $0) -n <name> -w <wishes>"
    echo "Options::"
    echo " -n, Enter name (mandatory)"
    echo " -w, Enter wishes. (Optional). Default is Good Morning"
    echo " -h, Display Help and exit"
}

while getopts ":n:w:t:h" opt; do
    case $opt in
        n) NAME="$OPTARG";;
        w) WISHES="$OPTARG";;
        t) EXTRA="$OPTARG";;
        \?) echo "invalid options: -"$OPTARG"" >&2; USAGE; exit;;
        :) USAGE; exit;;
        h) USAGE; exit;;
    esac
done

#if [ -z "$NAME" ] || [ -z "$WISHES" ]; then
if [ -z "$NAME" ]; then # now wishes is optional
    #echo "ERROR: Both -n and -w are mandatory options."
    echo "ERROR: -n is mandatory."
    USAGE
    exit 1
fi

echo -e "Hello $NAME. $WISHES. I have been learning Shell Script.\e[32m $EXTRA"