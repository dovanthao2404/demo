#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
dockerpath=sergionguyen12397/ourmemoryapp

# Step 2
# Run the Docker Hub container with kubernetes
kubectl run project4 --image=$dockerpath --port=80 --labels app=ourmemoryapp

# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
# Forward the container port to a host
kubectl port-forward ourmemoryapp 8080:80
