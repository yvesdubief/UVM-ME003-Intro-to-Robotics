#!/bin/sh

STREAMER=mjpg_streamer
DEVICE=/dev/video0
RESOLUTION=320x240
FRAMERATE=25
HTTP_PORT=8080

PLUGINPATH=/usr/lib

#$STREAMER -i "$PLUGINPATH/input_uvc.so -n -d $DEVICE -r $RESOLUTION -f $FRAMERATE" -o "$PLUGINPATH/output_http.so -n -p $HTTP_PORT"
./$STREAMER -i "./input_uvc.so -n -d $DEVICE -r $RESOLUTION -f $FRAMERATE" -o "./output_http.so -p $HTTP_PORT -w ./www"

