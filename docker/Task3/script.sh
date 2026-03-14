#!/bin/bash

CONTAINER_NAME="hello"
for i in {1..10}
do
docker container ls | grep $CONTAINER_NAME$i 
if [ $? == 0 ]
then
echo "Container exists, so deleting container $CONTAINER_NAME$i"
docker container rm -f $CONTAINER_NAME$i
echo "Creating container $CONATINER_NAME$i"
docker container run -d --name $CONTAINER_NAME$i -p 500$i:80 nginx
else
echo "Creating container $CONTAINER_NAME$i"
docker container run -d --name $CONTAINER_NAME$i -p 500$i:80 nginx
fi
done
