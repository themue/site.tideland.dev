#!/bin/sh
nginx > /dev/null 2> /dev/null
while true
do
	/bin/sh /pull.sh &
	sleep 3600
done
# EOF
