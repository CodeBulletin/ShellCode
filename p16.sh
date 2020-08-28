#!/bin/bash

var1="$1"
if [ ! -n "$var1" ]
then
    read -p "Enter the file name : " file
else
    file=$1
fi

ra=0
if [ -r "$file" ]
then
    modes[0]="readable"
    ra=1
fi

wa=0
if [ -w "$file" ]
then
    modes[1]="writeable"
    wa=1
fi

xa=0
if [ -x "$file" ]
then
    modes[2]="executable"
    xa=1
fi

if (( $ra == 1 & $wa == 1 & $xa == 1))
then
    modessep[0]=", "
    modessep[1]=" and "
    is=
elif (( $ra == 1 & $wa == 1 ))
then
    modessep[0]=" and "
elif (( ($ra == 1 & $xa == 1) || ($wa == 1 & $xa == 1) ))
then
    modessep[1]=" and "
elif (( $ra == 0 & $wa == 0 & $xa == 0))
then
    modes[1]="nether readable, writable, nor executable"
fi

echo "The file $file is ${modes[0]}${modessep[0]}${modes[1]}${modessep[1]}${modes[2]}"