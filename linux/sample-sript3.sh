#!/bin/bash

###########################################
#1)What is the command to find a file?
#a.file must be ends with .java
#b. file size must be greater than 10 MB
#		c. file must be older than 10 days
#########################################

#set -e #it will execute one by one


ls | grep "-" ; 
echo " list out only files"

ls | grep "java" ;
echo " list out only ends with .java files"

find  -type f -size +5M ;
echo " display the file name more than 5mb"


echo "display the files which is older than 10 days"
 
find  -type f -size +10

echo " dispaly the 6 digit string word"

ls | grep Vishnu string.java


#####################################################
#2) What is the command to find a 'string' in a file
#a. string must be a '6' digit word
	#	b. string starts with 'V' and ends with 'U'
		#	c. string contains like _B_D_   also, A_C_E
			#	d. Search a strings 'abc' and 'def'
					#	- OR ( abc or def)
							#	- AND (abc and def)
###########################################################################################

grep -ni vishnu string.java

