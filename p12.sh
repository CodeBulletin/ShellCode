#!/bin/bash
r=0
o=()
while true
do
    read -p "enter the equation : " equation
    y=$(($equation))
    echo "o($r): $y"
    o[r]=$y
    r=$(($r+1))
done