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
    sum=`expr $sum + $n % 10`
done
echo $sum