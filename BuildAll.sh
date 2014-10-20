#!/bin/bash

rm -f DemoWearApp/dist/*.apk
rm -f DemoWearAppOnPhone/dist/*.apk
rm -f DemoWearAppOnPhone/res/raw/*.apk

cd DemoWearApp
./Build.sh
cp -f dist/DemoWearApp.apk ../DemoWearAppOnPhone/res/raw/demowearapp.apk

cd ../DemoWearAppOnPhone
./Build.sh

mkdir -p ../final
cp -f dist/*.apk ../final/