# Android SDL2 Library 
This project builds an SDL2 library for Android.

## Step 1: Android Studio Build
* Open this directory in Android Studio.
* Edit ndkVersion to match the one you have installed (~/Android/Sdk/ndk/...).
* Build debug.
  * Select 'Build Variants' then select debug.
  * In the 'Build' menu select 'Make Project' (Ctrl+F9).
* Build release.
  * Select 'Build Variants' then select release.
  * In the 'Build' menu select 'Make Project' (Ctrl+F9).
* This should result in 2 .arr files in: ```libsdl2/build/outputs/aar```.

![](images/NDK_Version.png)

## Step 2: Gather Results
Now we want to gather the .arr's, libs, and includes ready for distribution.

* Run ./package_output.sh
* This will generate android-sdl2 and android-sdl2.tar.gz

