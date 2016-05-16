#!/bin/bash

cd "`dirname \"$0\"`"

echo "Use Win+f to go into fullscreen mode."

./SARndbox-1.6/bin/CalibrateProjector &

sleep 4

./make-fullscreen.sh

echo "Press ENTER to end the program."
read

killall CalibrateProjector

