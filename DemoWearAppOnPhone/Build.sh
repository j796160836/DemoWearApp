#!/bin/bash

function NSLog(){
	clear
	MESSAGE=$1
	echo "$(tput setaf 220) ${MESSAGE} $(tput sgr 0)"
}

function StopIfFail(){
	# http://www.dotkam.com/2008/10/24/getting-return-code-from-ant-in-shell/
	if [ $? -ne 0 ];then
	    echo "BUILD ERROR: See the message above."
	    exit 1;
	else
		sleep 1
	fi
}

NSLog "** BUILD google-play-services lib **"
cd ../google-play-services_lib
android update project --path .
ant clean release
StopIfFail

NSLog "** BUILD DemoWearAppOnPhone **"
cd ../DemoWearAppOnPhone
android update project --path .
ant clean release
StopIfFail

mkdir -p dist
apkname=`basename \`ls bin/*-release.apk\` | sed s/-release//g`
cp -f bin/*-release.apk dist/$apkname