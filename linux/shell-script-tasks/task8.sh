#!/bin/bash
#Accept username & password
#a. password must be "alphanumeric"
#b. password must be "upper+lower case"

read -s -p "enter the password: " password

if [ -z "$password" ]; then
echo "password should not be empty"
exit 1
fi
if [[ ! "$password" =~ [a-z] ]]; then
echo "password should contain small letters"
exit 1
fi
if [[ ! "$password" =~ [0-9] ]]; then
echo "password should contain numbers"
exit 1
fi
if  [[ ! "$password" =~ [A-Z] ]]; then
echo "password should contain capital letters"
exit 1
fi

if [[ "$password" =~ ^[A-Z0-9a-z]+$ ]]; then
echo "password $password is valid"
else
echo "enter the right password"
fi