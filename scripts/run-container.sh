#!/bin/bash

# Stop and remove old container if it exists
docker stop flask-app || true
docker rm flask-app || true

# Pull latest image from Docker Hub
docker pull yonatanhb/flask-restplus-app:latest

# Run container
docker run -d \
  --name flask-app \
  -p 5000:5000 \
  yonatanhb/flask-restplus-app:latest
