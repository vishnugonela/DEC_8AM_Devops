#!bin/bash
echo "check the eligible for civil exam attending"

read age

if [ "$age" -ge 18 ] && [ "$age"  -lt 45 ]
then 
	echo "eligible to $age write civil exam"
else
	echo "not eligible"
fi
