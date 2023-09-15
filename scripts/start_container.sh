#!/bin/bash
set -e

# Pull the Docker image from Docker Hub
docker pull lasda/simple-python-flask-app

# Run the Docker image as a container
docker run -d -p 7000:8000 lasda/simple-python-flask-app
