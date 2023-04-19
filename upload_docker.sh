#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
pathdocker="kabuto01/udacity-project-4:v1.0.0"

# Step 2:  
# Authenticate & tag
docker login
docker tag udacity-project-4 ${pathdocker}
echo "Docker ID and Image: $pathdocker"

# Step 3:
# Push image to a docker repository
docker push ${pathdocker}
