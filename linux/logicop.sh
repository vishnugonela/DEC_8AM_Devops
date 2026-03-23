#!bin/bash

echo "check the age eligible for civil exams"
read age
if [ "$age" ge 18] && ["$age" le 45]
then 
	echo "eligible for $age write civil exam"
else
        echo "not eligible for $age write civil exam"
fi	
