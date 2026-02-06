#!/bin/bash
disk_alert() {
read -p "enter the path to check: " path
if [ ! -d "$path" ]; then
echo "no directory exist"
exit 1
fi
 usage=$(df -h "$path" | awk 'NR==2 {print$5}' | tr -d '%')

if [ $usage -ge 80 ]; then
echo "alert disk usage is at risk"
else
echo "disk usage is not at danger"
fi

}
disk_alert
