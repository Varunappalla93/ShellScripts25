#!/bin/bash

VALIDATE()
{
    if [ $? -ne 0 ]
    then
        echo "installing software failed"
        exit 1
    else
        echo "installing software success"
fi
}



ID=$(id -u) 

if [ $ID -ne 0 ]
then
    echo "Error, pls try with root user"
    exit 1 # non-zero
else
   echo "you are root user"
fi

yum install mysql -y
VALIDATE()

yum install git -y
VALIDATE()