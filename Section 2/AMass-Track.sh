#!/bin/bash
#
#make a directory for amass, like ~/Amass/target-name, and use that as the script dir
if [[ $# -lt 2 ]] ; then
    echo 'Example usage'
	echo 'script.sh DOMAIN.com /FULL/PATH/TO/SCRIPT/DIR    with no trailing "/"'
    exit 0
fi
DOMAINS="$1"
RTPATH="$2"
if [[ ! -f $RTPATH ]]; then
	mkdir -p $RTPATH
fi
if [[ ! -f $RTPATH/amass_results.txt ]]; then
	touch $RTPATH/amass_results.txt
fi
if [[ -f $RTPATH/config.ini ]]; then
	echo "Config found, running with config.ini"
	amass enum -active -d $DOMAINS -config $RTPATH/config.ini -dir $RTPATH -p 443,80,8080 -brute -norecursive
else
	amass enum -active -d $DOMAINS -dir $RTPATH -p 443,80,8080 -brute -norecursive
fi
RESULT=$(amass track -d $DOMAINS -last 2 -dir $RTPATH | grep Found | awk '{print $2}')
FINAL_RESULT=$(while read -r d; do if grep --quiet "$d" $RTPATH/amass_results.txt; then continue; else echo "$d"; fi; done <<< $RESULT)
if [[ -z "$FINAL_RESULT" ]]; then
	FINAL_RESULT="No new subdomains were found"
else
	echo "$FINAL_RESULT" >> $RTPATH/amass_results.txt
	echo "$FINAL_RESULT" > $RTPATH/NEW-From-Last-Run.txt
fi
### uncomment below if you are adding this to crontab:
#if [[ ! -f $RTPATH/NEW-From-Last-Run.txt ]]; then
#	cp $RTPATH/amass.txt ~/Workers/check/file.txt
#fi
