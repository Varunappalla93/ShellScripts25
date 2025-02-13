#!/bin/bash

ID=$(id -u) 
TIMESTAMP=$(date +%F-%H-%M-%S)
R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

LOGFILE="/tmp/$0-$TIMESTAMP.log"
echo "Script started executing at $TIMESTAMP" &>>$LOGFILE

VALIDATE()
{
    if [ $1 -ne 0 ]
    then
        echo -e "ERROR:: $2 is $R failed $N"
        exit 1
    else
        echo -e "$2 is $G success $N"
fi
}


if [ $ID -ne 0 ]
then
    echo -e "$R Error, pls try with root user $N"
    exit 1 # non-zero
else
   echo "you are root user"
fi


yum install mysql -y &>>$LOGFILE
# passing args in function
VALIDATE $? "Installing mysql"

yum install git -y &>>$LOGFILE
VALIDATE $? "Installing git"