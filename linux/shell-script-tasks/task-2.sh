#!/bin/bash
#Write a shell script to print file content details. 
#Like No of Words, lines, characters.  You must accept input from the user. 
# Ask user for file name
echo "Enter the file name:"
read filename

# Check if file exists
if [ ! -f "$filename" ]; then
	    echo "Error: File does not exist"
	        exit 1
fi

# Print file details
echo "File Content Details:"
echo "---------------------"

lines=$(wc -l < "$filename")
words=$(wc -w < "$filename")
chars=$(wc -c < "$filename")

echo "Lines      : $lines"
echo "Words      : $words"
echo "Characters : $chars"

