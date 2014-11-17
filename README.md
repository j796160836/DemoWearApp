DemoWearApp
===========

A sample Wear app and handheld phone Wrapper app in Eclipse

## Using with Ant Script

1. Edit ant.properties for your release key informations. (Both in DemoWearApp and DemoWearAppOnPhone )
2. Run the ./BuildAll.sh
3. The result APK is in final folder.

Run the ./Build.sh in each folder will get the result with each steps.

## How to use it ?  

Import all the project into eclipse and compile,   
including:   

- google-play-services_lib  
- wearable-1.0.0  
- DemoWearApp  
- DemoWearAppOnPhone  

and have fun.

### Manually packaging 

1. Compile DemoWearApp and sign the wearApp with release key.  

2. Copy the signed wear APK file into  DemoWearAppOnPhone/res/raw/  
(Note that it allows only lowercase char.)

3. Edit the info in  
DemoWearAppOnPhone/res/xml/wearable_app_desc.xml  
it should be the same with  
DemoWearApp/AndroidManifest.xml  
4. Compile DemoWearAppOnPhone and sign the wearApp with release key.
5. Run DemoWearAppOnPhone.apk on your phone, that should install automatically into your watch devices.

(Note that the package name in both wrapper and wear apps must be same.)


### Debug wear via Bluetooth

1. Check the adb debugging checkbox at Developer options page in wear.
2. Check the Debug over Bluetooth checkbox at Developer optionsSetting page in wear.
3. Check the Debug over Bluetooth checkbox at the Setting page in your phone app "Android wear". 

You should see:  

    - Host: disconnected  
    - Target: connected  

4. Run ./ConnectDebugWear.sh  

You should see:  

    - Host: connected  
    - Target: connected  

and it will show up a new device named "localhost:4444" in DDMS.
