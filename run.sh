#!/bin/bash

# Define container and image names
CONTAINER_NAME="proxy-server-container"
IMAGE_NAME="proxy-server"
PORT=3128

# Check if the container is already running or exists
if docker ps --format "{{.Names}}" | grep -Eq "^${CONTAINER_NAME}\$"; then
    echo "Stopping running container..."
    docker stop $CONTAINER_NAME
    docker rm $CONTAINER_NAME
elif docker ps -a --format "{{.Names}}" | grep -Eq "^${CONTAINER_NAME}\$"; then
    echo "Removing stopped container..."
    docker rm $CONTAINER_NAME
fi

# Start the container
echo "Starting the container..."
docker run -d --name proxy-server-container -p $PORT:$PORT proxy-server

echo "Done."