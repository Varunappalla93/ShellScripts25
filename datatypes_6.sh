# data types
#!/bin/bash


num1=$1
num2=$2

# if a valid no is not given , it will consider as 0

res=$(($num1+$num2))
echo "total is $res"

echo "how many args are passed $# "

