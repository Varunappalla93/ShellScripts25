#!/bin/bash

ID=$(id -u) 
R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

TIMESTAMP=$(date +%F-%H-%M-%S)
LOGFILE="/tmp/$0-$TIMESTAMP.log"

echo "Script started executing at $TIMESTAMP" &>>$LOGFILE


VALIDATE()
{
if [ $1 -ne 0 ]
    then
        echo -e "ERROR:: $2 is $R failed $N"
        exit 1
    else
        echo -e "$2 is $G successful $N"
fi
}


if [ $ID -ne 0 ]
then
    echo -e "$R Error, pls try with root user $N"
    exit 1 # non-zero
else
   echo "you are root user"
fi


# echo "All args passed : $@" - git mysql postfix
for package in $@
do
yum list installed $package
if [ $? -ne 0 ]
then
    yum install $package -y
    VALIDATE $? "Installing of $package"
else
    echo -e "$package is already installed..$Y SKIPPING $N"
done