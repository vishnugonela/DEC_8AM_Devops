#!/bin/bash
#Write a shell script to accept input from user as their username only. 
#a. username must be 'string'
#b. username must be 'UPPERCASE'
#c. username should not contain spaces

read -p "enter the user name: " username

if [ -z "$username" ]; then
echo "username must not be empty"
exit 1
fi
if [[ "$username" =~ [[:space:]] ]]; then
echo "username should not have any spaces"
exit 1
fi
if [[ "$username" =~ ^[A-Z]+$ ]]; then
echo "username $username is valid"
else
echo "username is invalid"
fi
