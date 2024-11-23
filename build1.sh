#!/bin/bash


set -e


IMAGE_NAME="devops-app"

echo "Building Docker image: $IMAGE_NAME"


docker build -t $IMAGE_NAME .

echo "Docker image $IMAGE_NAME built successfully."

