#!/bin/bash

ID=$(id -u)

if [ $ID -ne 0 ]
then
    echo "Error, pls try with root user"
else
   echo "you are root user"
fi