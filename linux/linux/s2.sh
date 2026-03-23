#!/bin/bash

read -p "print he content of the file:" filename

if [ -f "$filename" ]
then
echo "file found it '$filename':"
 
lines=$(wc -l < "$filename")
echo "print the num of lines $lines"

words=$(wc -w < "$filename")
echo "print the num of lines $words"
 
chars=$(wc -l < "$filename")
echo "print the num of lines $chars"
else
	echo "file not exist"
fi

