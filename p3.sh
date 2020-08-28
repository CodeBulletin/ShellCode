#!/bin/bash
var1="$1"
if [ ! -n "$var1" ]
then
    read -p "starting month : " a
else
    a=$1
fi

var2="$2"
if [ ! -n "$var2" ]
then
    read -p "ending month : " b
else
    b=$2
fi

month=$( date +%m )
Bx=`expr $month - $a`
Ax=`expr $b - $month`
cal -A $Ax -B $Bx