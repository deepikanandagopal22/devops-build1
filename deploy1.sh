#!/bin/bash


set -e


IMAGE_NAME="devops-app"
CONTAINER_NAME="devops-app-container"
PORT="80"

echo "Deploying Docker image: $IMAGE_NAME"


if [ "$(docker ps -q -f name=$CONTAINER_NAME)" ]; then
    echo "Stopping existing container: $CONTAINER_NAME"
    docker stop $CONTAINER_NAME
    docker rm $CONTAINER_NAME
fi


docker run -d --name $CONTAINER_NAME -p $PORT:80 $IMAGE_NAME

echo "Docker image $IMAGE_NAME deployed successfully on port $PORT."

