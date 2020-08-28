#!/bin/bash

var1="$1"
if [ ! -n "$var1" ]
then
    read -p "Enter the number : " num
else
    num=$1
fi

sum=0
for (( n=$num; n > 0; n /= 10 ))
do
    r=`expr $n % 10`
    sum=`expr $sum + $r \* $r \* $r`
done

if [ $sum == $num ]
then
    echo "$num is an armstrong number"
else
    echo "$num is not an armstrong number"
fi