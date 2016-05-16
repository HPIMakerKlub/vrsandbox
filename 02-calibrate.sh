#!/bin/bash

cd "`dirname \"$0\"`"

./Kinect-2.8-002/bin/KinectViewer -c 0 &

echo "Press ENTER to end the program."
read

killall KinectViewer


