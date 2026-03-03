#!/bin/bash

for i in {1..10}
do 
  docker container ls | grep prod$i
  if [ $? == 0 ]; then
  echo "container already exist so deleting container prod$i"
  docker container rm -f prod$i
  docker container run -d --name prod$i -p 123$i:80 nginx
  else
   echo "creating new container prod$i"
   docker container run -d --name prod$i -p 123$i:80 nginx
   fi
   done