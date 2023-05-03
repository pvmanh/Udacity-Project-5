#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
pathdocker="kabuto01/udacity-project-5:${CIRCLE_WORKFLOW_ID:0:7}"

# Step 2:  
# Authenticate & tag
docker login -u="$DOCKERHUB_USERNAME" -p="$DOCKERHUB_PASSWORD"
docker tag udacity-project-5 ${pathdocker}
echo "Docker ID and Image: $pathdocker"

# Step 3:
# Push image to a docker repository
docker push ${pathdocker}
