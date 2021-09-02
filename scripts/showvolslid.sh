#!/bin/bash

INFO="$(eww windows)"
STR="${INFO:0:3}"
#STR="${STR// /}"
VOL="*volume_slider"
#echo "${INFO}" &
#echo "${VOL}" &
if [[ "$INFO" == *"$VOL"* ]]; then
	echo '' &
else
	exec eww open volume_slider &
	#echo 'no open' &
fi


FLAG=1 
VOL=$(amixer -D pulse sget Master | grep 'Left:' | awk -F'[][]' '{ print $2 }' | tr -d '%')
#VOL2=  exec amixer -D pulse sget Master | grep 'Left:' | awk -F'[][]' '{ print $2 }' | tr -d '%'
#echo $VOL
sleep 1
while [ $FLAG -ne 7 ]; do 

	VOL2=$(amixer -D pulse sget Master | grep 'Left:' | awk -F'[][]' '{ print $2 }' | tr -d '%') 
	#VOL= exec amixer -D pulse sget Master | grep 'Left:' | awk -F'[][]' '{ print $2 }' | tr -d '%'
	#echo $VOL2
	sleep 0.3 
	if [[ $VOL1 -ne $VOL2 ]]; then 
		VOL1=$VOL2 
		FLAG=1
	#	echo "again"	
	else 
		FLAG=$((FLAG+1)) 
	#	echo $FLAG
	fi 


done
exec eww close volume_slider &
exit
