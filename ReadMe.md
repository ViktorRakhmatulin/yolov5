
# build_and_run.sh
# Usage: ./build_and_run.sh <path_to_dataset> <path_to_weights>

# Make the script executable
chmod +x build_and_run.sh

# Run the script with dataset and weights paths
./build_and_run.sh /home/viktor/Skoltech_project/dataset-vehicles /home/viktor/Skoltech_project/yolov5/weights

weights: 
https://drive.google.com/drive/folders/147qwUiIeG1AENag_VvCfeatFqwPouiKu?usp=sharing


Inside docker commands:
cd /usr/src/app/

python val.py --weights weights/best.torchscript --data data/docker.yaml --device 0 
<!-- to assess speed metrics -->
python val.py --weights weights/best.torchscript --data data/docker.yaml --device 0 --task speed
<!-- to perform detection of cars on specific files, folders, video -->
python detect.py --weights weights/best.torchscript --source test_images --device 0 --class 0