#!/bin/bash

prime()
{
    x=$1
    y=2
    mid=`echo "$x / 2" | bc`
    while [ $y -le $mid ]
    do
        if [ `echo " $x % $y " | bc` -eq 0 ]
        then
            return 0
        fi
        y=`expr $y + 1`
    done
    return 1
}

main()
{
    while :
    do
        read -p "enter the number : " x
        prime $x
        out=$?
        if [ $out -eq 1 ]
        then
            echo "$x is prime"
        else
            echo "$x is not prime"
        fi
    done
}

main