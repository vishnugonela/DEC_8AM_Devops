#!/bin/bash
#Write a shell script to print server details.
#Name:
#Memory:
#CPU:
#Disk

echo "Name: $(hostname)"
free -h | grep Mem:
lscpu | grep "Model name"
df -h /

