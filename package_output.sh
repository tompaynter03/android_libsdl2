#!/bin/bash
set -xe

mkdir -p android-sdl2
cd android-sdl2

cp ../libsdl2/build/outputs/aar/libsdl2-debug.aar .
cp ../libsdl2/build/outputs/aar/libsdl2-release.aar .

unzip libsdl2-debug.aar -d debug
unzip libsdl2-release.aar -d release

cp ../libsdl2_image/build/outputs/aar/libsdl2_image-debug.aar .
cp ../libsdl2_image/build/outputs/aar/libsdl2_image-release.aar .

unzip -o libsdl2_image-debug.aar -d debug
unzip -o libsdl2_image-release.aar -d release

mkdir -p include/SDL2
cp -r ../libsdl2/src/main/SDL2-2.0.12/include/* include/SDL2/.
cp ../libsdl2_image/src/main/SDL2_image-2.0.5/*.h include/SDL2/.

cp -r ../libsdl2/src/main/SDL2-2.0.12/android-project/app/src/main .

cd ..
tar -czvf android-sdl2.tar.gz android-sdl2

