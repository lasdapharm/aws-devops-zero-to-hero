#!/bin/bash
set -e

# Stop and remove all running containers
container_ids=$(docker ps -q)

if [ -n "$container_ids" ]; then
    for container_id in $container_ids; do
        docker stop $container_id
        docker rm $container_id
    done
    echo "Stopped and removed all running containers."
else
    echo "No running containers found."
fi
