#!/bin/bash
echo " we are doing task creation of 3 tree folders and create f1..f10 files display 3rd file text"
#author: malathi

read num
a=0
while [ "$a" -le "$num" ] 
do 
currentdir=$PWD
echo " $currentdir "
mkdir shiv
cd shiv
touch f{1..10}.txt
a =$((a+1));
echo "complete"
done 

vim f3.txt

echo "success"
echo " "
echo "here what you want written"

cat f3.txt
