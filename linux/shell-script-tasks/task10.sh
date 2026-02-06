#!/bin/bash
#Write a shell script to loop based on number of characters in a string.

#Ex:- Accept a string(name) : vishnu 
#loop suupose excute from V to U (6 digits)


read -p "enter the name :" name

length=${#name}

echo "length of the string is $length"

for (( i=0; i<length; i++ ))
do
echo "${name:$i:1}"
done
