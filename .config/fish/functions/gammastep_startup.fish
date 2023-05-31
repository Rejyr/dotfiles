function gammastep_startup
    if test -z "$(pgrep gammastep)"
        /usr/bin/gammastep-indicator -l (curl -s "https://location.services.mozilla.com/v1/geolocate?key=geoclue" | jq -r '"\(.location.lat):\(.location.lng)"') &
        disown
    end
end
