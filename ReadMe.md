# YOLOv5 Docker Deployment

## Overview

This project provides a Docker-based deployment setup for finetuned YOLOv5 model. It includes scripts for building and running a Docker container, as well as instructions for validating and using the model.

## Requirements

- Docker installed on your system
- Access to the YOLOv5 weights and dataset

## Setup

1. **Make the `build_and_run.sh` script executable**:

    ```bash
    chmod +x build_and_run.sh
    ```

2. **Run the script with the dataset and weights paths**:

    ```bash
    ./build_and_run.sh /path/to/dataset /path/to/weights
    ```

    Example:

    ```bash
    ./build_and_run.sh /home/viktor/Skoltech_project/dataset-vehicles /home/viktor/Skoltech_project/yolov5/weights
    ```

## Weights and Data

Download the finetuned weights from [Google Drive](https://drive.google.com/drive/folders/147qwUiIeG1AENag_VvCfeatFqwPouiKu?usp=sharing).

Download the data from [Google Drive](https://drive.google.com/drive/folders/1dcyyissnkHHMUHOuMaGvh7IxHFO_QXdG?usp=sharing).

The latest code of the model is adopted from YoloV5 repo: [Github](https://github.com/ultralytics/yolov5).

The weights "best.pt" and the data are taken from: [Github](https://github.com/MaryamBoneh/Vehicle-Detection/tree/main?tab=readme-ov-file).

## Inside the Docker Container

After running the Docker container, you can execute the following commands:

1. **Change to the application directory**:

    ```bash
    cd /usr/src/app/
    ```

2. **Validate the model**:

    ```bash
    python val.py --weights weights/best.torchscript --data data/docker.yaml --device 0
    ```

3. **Assess speed metrics**:

    ```bash
    python val.py --weights weights/best.torchscript --data data/docker.yaml --device 0 --task speed
    ```

4. **Perform detection on specific files, folders, or video**:

    ```bash
    python detect.py --weights weights/best.torchscript --source test_images --device 0 --class 0
    ```

## Script Details

### build_and_run.sh

This script builds the Docker image and runs the container with the specified dataset and weights paths.

Usage:

```bash
./build_and_run.sh <path_to_dataset> <path_to_weights>
