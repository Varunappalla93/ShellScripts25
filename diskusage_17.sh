#!/bin/bash


disk_usage=$(df -HT | grep -vE 'tmp|File')
disk_threshold=1

message=""

while IFS= read line
do
    usage=$(echo $line | awk '{print $6F}' | cut -d % -f1)
    partition=$(echo $line | awk '{print $1F}')

    if [ $usage -ge $disk_threshold ]
    then
        message+="High disk usage on $partition:$usage\n"
    fi
done <<< $disk_usage

echo -e "Message:$message"

# echo "$message" | mail -s "High disk usage" info@gmail.com

sh mail_18.sh "DevOps team" "high disk usage" "$message" "info@gmail.com" "Alert-High Disk Usage"


# df -HT -> /dev/xvda1 -  to check disk volumes
# df -HT | grep xfs - to get xfs type


# df -HT | grep -v tmp - to get other files type other than tmp files type
# df -HT | grep -vE 'tmp|File' - to get other files type other than tmp files type without headers