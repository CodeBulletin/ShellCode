#!/bin/bash

var1="$1"
if [ ! -n "$var1" ]
then
    read -p "username : " usr
else
    usr=$1
fi

if [ $usr == "bmalh" ]
then
    read -s -p "password : " pas
    echo ""
    if (( $pas == 123 ))
    then
        echo "hello bhavesh"
    else
        echo "wrong password"
    fi
else
    echo "User $usr not found"
fi