#!/bin/bash

var1="$1"
if [ ! -n "$var1" ]
then
    read -p "Enter the number : " num
else
    num=$1
fi

for ((i=1; i<=$num; i++))
do
    for ((j=1; j<=$i; j++))
    do
        echo -e "* \c"
    done
    echo ""
done