#!/bin/bash

SRC_DIR=/tmp/shellscript-logs

R="\e[31m"
G="\e[32m"
Y="\e[33m"
Y="\e[0m"

# touch -d 20231201 user.log - to create old files

if [ ! -d $SRC_DIR ] # -d for exists, hence used ! to check if it does not exist
then
    echo -e "$R source directory:$SRC_DIR  does not exist.$N"
    mkdir $SRC_DIR
fi

FILES_TO_DELETE=$(find $SRC_DIR -type f -mtime +14 -name "*.log")

while IFS= read -r line
do
    echo "Deleting file:$line"
    rm -rf $line
done <<< $FILES_TO_DELETE