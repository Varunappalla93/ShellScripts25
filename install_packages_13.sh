#!/bin/bash

ID=$(id -u) 

if [ $ID -ne 0 ]
then
    echo -e "$R Error, pls try with root user $N"
    exit 1 # non-zero
else
   echo "you are root user"
fi


echo "All args passed : $@"
