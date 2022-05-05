#!/bin/sh
# Updates weather forecast

country_code="US"
location="Allentown"
ansiweather -l $location,$country_code -u metric -s true -f 1 -a false | cut -d' ' -f7,8-
