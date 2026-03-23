#!/bin/bash/
read -p "display content of the:" filename

if [ -f "$filename" ]; then
echo "file is found it:'$filename':"
echo "----------------------" 
#get num of line in a file


lines=$(wc -l < "$filename")
echo "print the num of lines:$lines"

words=$(wc -w < "$filename")
echo "print the num if words $words"

chars=$(wc -l < "$filename")
echo "print the num if chars $chars"
else 
	echo "filenot found $filename"
fi

