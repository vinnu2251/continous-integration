#!/bin/bash

# Get the IDs of all containers (running and stopped)
ALL_CONTAINERS=$(docker ps -aq)

if [ -n "$ALL_CONTAINERS" ]; then
    # Stop all running containers
    docker stop $ALL_CONTAINERS
    # Remove all containers
    docker rm $ALL_CONTAINERS
    echo "All containers (running and stopped) have been stopped and removed."
else
    echo "No containers found."
fi
