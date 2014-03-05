#!/bin/bash
wget -t 1 http://www.gismeteo.by/weather-minsk-4248/ 
grep -e a{2-3} index.html
rm index.html
