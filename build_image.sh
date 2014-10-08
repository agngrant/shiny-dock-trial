#!/bin/bash
git checkout master
service=$JOB_NAME
service_port=$JOB_PORT
BRANCH=$(git branch | grep '^*' |awk '{print $2}') 
echo $BRANCH

echo $service:$BRANCH $WORKSPACE
docker build -t $service:$BRANCH $WORKSPACE

container_id=$(docker run -d -p $service_port $service:$BRANCH)
container_port=$(docker inspect $container_id | awk 'BEGIN { FS = "\"" } ; /"'$service_port'":/ { print $4 }')

echo "App running on http://localhost:$container_port"

docker stop $container_id

docker run -t trial:master /bin/echo "Hello"
