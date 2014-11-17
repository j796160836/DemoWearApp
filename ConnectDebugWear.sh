#!/bin/bash
DEVICE=`adb devices | sed '/List of devices/d' | sed '/:4444/d' | head -n 1 | awk '{print $1 "\t"}'` 
if [ "$DEVICE" == "" ]; then
	echo "Please conntect devices!"
	exit 0
else 
	echo "Devices:  "$DEVICE
fi  
adb -s $DEVICE forward tcp:4444 localabstract:/adb-hub; adb connect localhost:4444