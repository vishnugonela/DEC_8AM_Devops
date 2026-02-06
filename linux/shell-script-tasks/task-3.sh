#!/bin/bash
 #Write a shell script to find a file in specific directory. 
#a. Script should accept user input for path & filename
# b.  if path not found or empty then script can take default path as /

# Ask user for directory path

echo "Enter directory path (press Enter for default /):"
read path

# If path is empty, use /
if [ -z "$path" ]; then
	    path="/"
fi

# Check if path exists
if [ ! -d "$path" ]; then
	    echo "Error: Directory does not exist"
	        exit 1
fi

# Ask user for file name
echo "Enter file name to search:"
read filename

# Check if filename is empty
if [ -z "$filename" ]; then
	    echo "Error: File name cannot be empty"
	        exit 1
fi

echo "Searching for '$filename' in '$path' ..."
echo "---------------------------------------"

# Find the file
find "$path" -type f -name "$filename" 2>/dev/null

echo "Search completed"

