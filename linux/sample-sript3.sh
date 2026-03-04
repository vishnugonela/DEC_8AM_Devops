#!/bin/bash

###########################################
#1)What is the command to find a file?
#a.file must be ends with .java
#b. file size must be greater than 10 MB
#		c. file must be older than 11 days
#########################################

#set -e #it will execute one by one


ls | grep "-" ; 
echo " list out only files"

ls | grep "java" ;
echo " list out only ends with .java files"

find  -type f -size +5M ;
echo " display the file name more than 5mb"

find -type f -mtime +1
echo "display the files which is older than 1 days"

