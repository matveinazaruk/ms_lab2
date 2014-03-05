#!/bin/bash
. $PWD/weather.conf
while true; do
	wget -t 1 -O $TEMP_FILE -o $TEMP_LOG $SOURCE
	grep -Po '(?<=<div class="b-thermometer__now">)([^</div>]*)' $TEMP_FILE | awk '{print $1}' 
	rm $TEMP_FILE
	rm $TEMP_LOG
	sleep $DELAY_TIME
done
