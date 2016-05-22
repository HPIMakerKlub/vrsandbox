#!/bin/bash

cd "`dirname \"$0\"`"

sleep 2

stop_program=""

while [ "$stop_program" == "" ]
do

  ./run.sh &

  ./make-fullscreen.sh

  echo "Press ENTER to restart."
  echo "Press any letter and ENTER to stop."
  read stop_program

  killall SARndbox

done

killall SARndbox


