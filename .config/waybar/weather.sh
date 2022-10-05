#!/bin/sh
# Updates weather forecast

geoip=$(curl -s https://freegeoip.live/csv/)
country_code=$(echo $geoip | cut -d, -f 2)
location=$(echo $geoip | cut -d, -f 6)
ansiweather -u metric -s true -f 1 -a false -l $location,$country_code | cut -d' ' -f7,8-
