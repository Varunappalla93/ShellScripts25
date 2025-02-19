#!/bin/bash


disk_usage=$(df -HT | grep -vE 'tmp|File')
disk_threshold=1

message=""

while IFS= read line
do
    usage=$(echo $line | awk '{print $6F}' | cut -d % -f1)
    partition=$(echo $line | awk '{print $1F}')

    if [ $usage -ge disk_threshold ]
    then
        message+="High disk usage on $partition:$usage\n"
    fi
done <<< $disk_usage

echo -e "Message:$message"









c


# df -HT -> /dev/xvda1 -  to check disk volumes
# df -HT | grep xfs - to get xfs type


# df -HT | grep -v tmp - to get other files type other than tmp files type
# df -HT | grep -vE 'tmp|File' - to get other files type other than tmp files type without headers
