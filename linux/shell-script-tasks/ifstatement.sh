#!/bin/bash

read -p "enter the number: " num

if [ $num -gt 5 ]
then 
  echo "the number is greater than 5"
elif [ $num -eq 5 ]
then
      echo "the number is equal to 5"
elif [ $num -lt 5 ]
then
  echo "the number is less than 5"
else
      echo "no result found "
fi

