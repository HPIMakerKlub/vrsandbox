#!/bin/bash
#
# Send Win+f to focussed window to make it fullscreen.
#

if type xdotool 2>/dev/null 1>/dev/null
then
  sleep 1
  echo "trying fullscreen combination"
  xdotool keydown super key f keyup super
  xdotool mousemove `xdpyinfo | awk '/dimensions/{print $2}' | sed "s/x/ /"`
  exit 0
else
  echo "Install \"xdotool\" to start in fullscreen mode."
  exit 1
fi
