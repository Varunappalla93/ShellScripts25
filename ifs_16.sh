#!/bin/bash

file=/etc/passwd

R="\e[31m"
G="\e[32m"
Y="\e[33m"
Y="\e[0m"

if [ ! -f $file ] 
then
    echo -e "$R file :$file  does not exist.$N"
fi

while IFS=":" read -r username password user_id group_id user_fullname home_dir shell_path
do
echo "username:$username"
echo "user id:$user_id"
echo "user full name:$user_fullname"
done < $file