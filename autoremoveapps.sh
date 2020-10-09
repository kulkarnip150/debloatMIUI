#!/bin/bash

#chmod 500 autoremoveapps.sh

clear
count=0
as="adb shell"
tput bold
tput setaf 1
echo "Allow USB debugging on device"
echo "Waiting for 5 seconds....."
tput sgr0
sleep 5
	adb devices
while read -r CURRENT_LINE
	do	
		appName=$CURRENT_LINE
		tput setaf 5
		command="${as} ${appName}"
		echo $CURRENT_LINE
		tput sgr0
			$command
		sleep 1
		((count++))
done < debloatmiui.txt

tput bold
tput setaf 2
echo "Near about "$count" apps are removed "
sleep 2
tput setaf 1
echo "Device will restart in 3 seconds..."
sleep 3
	adb reboot
tput setaf 2
echo "Done"
tput sgr0
exit
