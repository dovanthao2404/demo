#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
dockerpath=sergionguyen12397/ourmemoryapp

# Step 2:  
# Authenticate & tag
docker login -u $DOCKER_LOGIN -p $DOCKER_PASSWORD
echo "Docker ID and Image: $dockerpath"
docker image tag ourmemoryapp $dockerpath:latest

# Step 3:
# Push image to a docker repository
docker push $dockerpath:latest