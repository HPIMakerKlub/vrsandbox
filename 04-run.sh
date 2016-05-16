#!/bin/bash

cd "`dirname \"$0\"`"

sleep 2

./run.sh &

./make-fullscreen.sh

echo "Press ENTER to end the program."
read

killall SARndbox


