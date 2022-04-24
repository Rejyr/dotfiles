#!/bin/sh
# Updates weather forecast

ip r | while read Def _ IP _; do
	case $Def in
		default)
			ping -q -w 1 -c 1 "$IP" >/dev/null || exit

			break ;;
	esac
done

geoip=$(curl -s https://freegeoip.app/csv/)
country_code=$(echo $geoip | cut -d, -f 2)
location=$(echo $geoip | cut -d, -f 6)
ansiweather -l $location,$country_code -u metric -s true -f 1 -a false | cut -d' ' -f7,8-
