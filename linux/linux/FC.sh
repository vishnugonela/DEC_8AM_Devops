#!/bin/bash

	
read -p "enter the file name:" filename

 //check the file exitsting

 if [ -f "$filename" ]; then
    echo "File content details for '$filename':"
    echo "-------------------------------------"

    # Get line count
    lines=$(wc -l < "$filename")
    echo "Number of lines: $lines"

    # Get word count
    words=$(wc -w < "$filename")
    echo "Number of words: $words"

    # Get character count
    chars=$(wc -m < "$filename")
    echo "Number of characters: $chars"
else
    echo "Error: File '$filename' not found."
fi
