#!/bin/bash

cd "`dirname \"$0\"`"

sleep 2

if type xdotool 2>/dev/null 1>/dev/null
then
  fullscreen=true
else
  echo "Install \"xdotool\" to start in fullscreen mode."
  fullscreen=false
fi

./04-run.sh &

if [ "$fullscreen" == "true" ]
then
  sleep 1
  echo "trying fullscreen combination"
  xdotool keydown super key f keyup super
fi

echo "Press ENTER to end the program."
read

killall SARndbox


