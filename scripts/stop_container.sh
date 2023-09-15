#!/bin/bash
set -e

# Capture the container ID of the running container (if any)
containerid=$(docker ps -q)
if [ -n "$containerid" ]; then
    # Stop and remove the container
    docker rm -f "$containerid"
    echo "Stopped and removed container with ID: $containerid"
else
    echo "No running containers found to stop and remove."
fi
