#!/bin/bash

cd "`dirname \"$0\"`"

sleep 2

function start_simulation() {
  ./run.sh &

  ./make-fullscreen.sh
}

function stop_simulation() {
  killall SARndbox
}

function configuration_string() {
  cat ./run.sh
  cat SARndbox-1.6/etc/SARndbox-1.6/BoxLayout.txt
  cat SARndbox-1.6/etc/SARndbox-1.6/HeightColorMap.cpt 
}

echo "Press ENTER to stop."
old_configuration="`configuration_string`"

start_simulation

while true
do
  if read -t 1 stop_program && [ "$stop_program" != "" ]
  then
    echo "Exiting Program because \"$stop_program was pressed\"."
    break
  fi

  configuration="`configuration_string`"
  if [ "$configuration" != "$old_configuration" ]
  then
    echo "Configuration changed, restarting simulation."
    stop_simulation
    start_simulation
    old_configuration="$configuration"
  fi

done

stop_simulation

