#!/bin/bash

cd "`dirname \"$0\"`"

echo "Use Win+f to go into fullscreen mode."

#  -sp <min num samples> <max variance>
#     Sets the frame filter parameters minimum number of valid samples
#     and maximum sample variance before convergence
#     Default: 10 2
#  -he <hysteresis envelope>
#     Sets the size of the hysteresis envelope used for jitter removal
#     Default: 0.1
#  -nhm
#     Disables elevation color mapping
#  -hcm <elevation color map file name>
#     Sets the name of the elevation color map
#     Default: /home/coderdojo/vrsandbox/SARndbox-1.6/etc/SARndbox-1.6/HeightColorMap.cpt
#  -ncl
#     Disables topographic contour lines
#  -cls <contour line spacing>
#     Sets the elevation distance between adjacent topographic contour
#     lines in cm
#     Default: 0.75
#  -wts <water grid width> <water grid height>
#     Sets the width and height of the water flow simulation grid
#     Default: 640 480
#  -ws <water speed> <water max steps>
#     Sets the relative speed of the water simulation and the maximum
#     number of simulation steps per frame
#     Default: 1.0 30
#  -wo <water opacity>
#     Sets the water depth at which water appears opaque in cm
#     Default: 2.0
#  -rer <min rain elevation> <max rain elevation>
#     Sets the elevation range of the rain cloud level relative to the
#     ground plane in cm
#     Default: Above range of elevation color map
#  -rs <rain strength>
#     Sets the strength of global or local rainfall in cm/s
#     Default: 0.25
#  -evr <evaporation rate>
#     Water evaporation rate in cm/s
#     Default: 0.0
#  -fpv
#     Fixes the navigation transformation so that Kinect camera and
#     projector are aligned, as defined by the projector calibration file
#  -hs
#     Enables hill shading
#  -us
#     Enables shadows
#  -uhm
#     Enables elevation color mapping
#  -rws
#     Renders water surface as geometric surface
#  -cp <control pipe name>
#     Sets the name of a named POSIX pipe from which to read control commands

./SARndbox-1.6/bin/SARndbox -fpv

