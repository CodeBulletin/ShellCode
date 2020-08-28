#!/bin/bash

var1="$1"
if [ ! -n "$var1" ]
then
    read -p "Enter the number : " num
else
    num=$1
fi

for i in {1..10}
do
    res=`expr $i \* $num`
    echo "$num * $i = $res"
done