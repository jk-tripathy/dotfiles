#!/bin/bash

if pidof mpv > /dev/null
    then
	    RAW_METADATA=$(echo '{ "command": ["get_property", "media-title"] }' | socat - /tmp/mpvsocket) 
        IFS=','; RAW_ARRAY=($RAW_METADATA); unset IFS;
        METADATA=${RAW_ARRAY[0]}
        CLEAN_METADATA=${METADATA:9:-1}

		    printf "ﱘ $CLEAN_METADATA"
else
	exit
fi
