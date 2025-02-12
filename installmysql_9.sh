#!/bin/bash

ID=$(id -u)

if [ $ID -ne 0 ]
then
    echo "Error, pls try with root user"
    exit 1 # non-zero
else
   echo "you are root user"
fi


yum install mysql -y

if [ $? -ne 0 ]
then
    echo "installing mysql failed"
    exit 1
else
    echo "installing mysql success"
fi