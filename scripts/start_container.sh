#!/bin/bash
set -e

# Pull the Docker image from Docker Hub
docker docker pull vinay7944/simple-python-flask-app:latest

# Run the Docker image as a container
 docker run -d -p 5000:5000 vinay7944/simple-python-flask-app:latest