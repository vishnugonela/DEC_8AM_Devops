#!/bin/bash
echo "check marriage eligibility age limit"

read age 

if [ "$age" -ge 21 ] && [ "$age" -lt 35 ]
then 
	echo " we can marry $age "
else
	echo " we cannot marry $age "
fi
