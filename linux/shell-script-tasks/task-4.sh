#!/bin/bash
#Write a shell script to find all files ends with ".java" in a directory(s)
#a. run a loop with count of files found
#b. if files found filter only last 10 days
#c. Delete files last 10days 

# Ask user for directory path
read -p "Enter directory path (default /): " path

# Set default path to /
path=${path:-/}

# Check if directory exists
if [ ! -d "$path" ]; then
	    echo "Error: Directory not found"
	        exit 1
fi

echo "Searching for .java files modified in last 10 days in $path"
echo "-----------------------------------------------------------"

count=0

# Find .java files modified in last 10 days
for file in $(find "$path" -type f -name "*.java" -mtime -10 2>/dev/null)
do
	    echo "Found: $file"
	        count=$((count + 1))

		    # Delete the file
		        rm -f "$file"
		done

		echo "-----------------------------------------------------------"
		echo "Total .java files found and deleted: $count"

