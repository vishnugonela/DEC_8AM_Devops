#!/bin/bash
#Write a shell script to loop based on number of files in current directory.

read -p "enter the path: " path
if [ ! -d "$path" ]; then
echo "path does not exits"
fi
filecount=$(find "$path" -type f | wc -l)
echo "number of files in $path is $filecount"

i=1
while [ $i -le $filecount ]
do 
echo "file number $i"
i=$((i+1))
done
