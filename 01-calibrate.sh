#!/bin/bash

cd "`dirname \"$0\"`"

gedit SARndbox-1.6/etc/SARndbox-1.6/BoxLayout.txt &

./Kinect-2.8-002/bin/RawKinectViewer  &

echo "Press ENTER to end the program."
read

killall RawKinectViewer



