#!/bin/bash
INFO="$(eww windows)"
STR="${INFO:0:3}"
#STR="${STR// /}"
VOL="*volume_slider"
echo "${INFO}"
echo "${VOL}"
if [[ "$INFO" == *"$VOL"* ]]; then 
	echo 'yis' 
else 
	echo 'no' 
fi
exit
