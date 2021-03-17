#!/bin/bash
#assumes httpx is installed
#assumes nuclei template dir is ~/nuclei-templates
#add to cron (crontab -e) like this: 
#*/1 * * * * /script/location.sh
if [[ ! -f ~/Workers/ ]]; then
	mkdir -p ~/Workers/check
fi
echo "starting..."
if [[ -f "~/Workers/check/stop.txt" ]]; then
#       echo "STOP FOUND"
        exit
        fi
FILE="~/Workers/check/file.txt"
ROOT="~/Workers/check"
RTPATH="~/nuclei-templates"
if [ -f "$FILE" ]; then
        now=`date +"%Y-%m-%d.%H:%M:%S"`
        echo "$now" > $ROOT/stop.txt
        mkdir $ROOT/Output/$now
        httpx -l $FILE -silent -threads 30 | nuclei -t $RTPATH -o $ROOT/Output/$now -timeout 30
        rm $FILE
        rm $ROOT/stop.txt
else
        exit
fi
