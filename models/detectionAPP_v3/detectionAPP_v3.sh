#!/bin/bash

export PYTHONPATH=$PYTHONPATH:/home/pi/Projects/py/ML/tensorflow/models/research:/home/pi/Projects/py/ML/tensorflow/models/research/slim:/home/pi/Projects/py/ML/tensorflow/models:/home/pi/Projects/py/ML/tensorflow/models/research/object_detection
export LINE_NOTIFY_TOKEN=9H60VvGBBaptohQd9VgI2SboJseX5ygpg7PirQYvzON

# enable v4l2rtspserver
sudo systemctl start v4l2rtspserver.service

# change to folder directory
cd /home/pi/Projects/py/ML/tensorflow/models/detectionAPP_v3

# exec detectionAPPservice.py to start socket listening to port 9005
/home/pi/Projects/pyenv/ML/bin/python $(pwd)/detectionAPPservice_v3.py