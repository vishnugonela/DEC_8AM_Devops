#!/bin/bash
#Write a shell script to accept string from the user, 
#then print numbers of characters count along with its letter>
#Ex:  String = password

read -p "enter the name: " str
declare -A count
for (( i=0; i<${#str}; i++ ))
do 
  char=${str:$i:1}
  count[$char]=$(( count[$char] +1 ))
  done
  for key in "${!count[@]}"
  do 
  echo "$key=${count[$key]}"
  done

