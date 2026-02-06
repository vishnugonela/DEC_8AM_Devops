#!/bin/bash
count_oldfiles() {
    read -p "enter the path name: " path
    read -p "enter the extension name: " ext
    if [ ! -d "$path" ]; then
    echo "directory does not exists "
    exit 1
    fi
    count=0
echo "files older than 7 days"
for file in $(find "$path" -type f -name "*$ext" -mtime +7)
do ls -lth "$file"
count=$((count+1))
done

if [ $count -eq 0 ]; then
echo "no old files found"
fi
}
 
count_oldfiles /var/logs