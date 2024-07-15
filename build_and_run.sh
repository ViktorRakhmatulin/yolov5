#!/bin/bash

DATA_PATH=$1
WEIGHTS_PATH=$2

# Build the Docker image
docker build -t run5 .

# Run the Docker container
docker run --gpus all --privileged -it -p 80:80 \
    -v "$WEIGHTS_PATH":/usr/src/app/weights \
    -v "$DATA_PATH":/usr/src/data \
    --shm-size=1g run5
