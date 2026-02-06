#!/bin/bash
#Write a shell script to install a package called 'tomcat'
#a. Before installing check whether package installed or not
read -p "enter the package name :" package

dpkg -l | grep  $package 
if [ $? -eq 0 ]; then
echo "$package is already installed"
else 
 echo "downloading $package"
sudo apt install -y $package
fi

