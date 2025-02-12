#!/bin/bash

num1=$1

if [ $num1 -gt 100 ]
then
    echo "$num1 is greater than 100"
else
    echo "$num1 is not greater than 100"
fi
