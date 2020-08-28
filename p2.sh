#!/bin/bash

var="$@"
if [ ! -n "$var" ]
then
    read -p "enter the months name or number : " x
else
    x=$"$@"
fi

for i in $x
do
    cal -m $i
done