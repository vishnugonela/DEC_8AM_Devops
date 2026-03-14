#!/bin/bash
########################
#Print server details
# Name
# Memory
# CPU
# Disk
#########################

echo " Name of the server"

hostname



echo " Dispaly the memory details"



cat /proc/meminfo

echo "display the CPU info"

nproc

echo "Display the disk space"

df -h
