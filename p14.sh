#!/bin/bash

factorial()
{
    num=1
    for ((i=1; i<=$1; i++))
    do
        num=$(($num * i))
    done
    echo "$num"
}

var="$@"
if [ ! -n "$var" ]
then
    read -p "enter the number : " x
else
    x=$"$@"
fi

fact=$(factorial $x)

echo "$x! = $fact"