#!/bin/bash

VALIDATE()
{
    if [ $1 -ne 0 ]
    then
        echo "$2 is failed"
        exit 1
    else
        echo "$2 is success"
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
# passing args in function
VALIDATE $? "Installing mysql"

yum install git -y
VALIDATE $? "Installing git"