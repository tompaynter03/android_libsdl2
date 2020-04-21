#!/bin/bash
set -xe

mkdir -p android-sdl2
cd android-sdl2

cp ../libsdl2/build/outputs/aar/libsdl2-debug.aar .
cp ../libsdl2/build/outputs/aar/libsdl2-release.aar .

unzip libsdl2-debug.aar -d debug
unzip libsdl2-release.aar -d release

mkdir -p include/SDL2
cp -r ../libsdl2/src/main/SDL2-2.0.12/include/* include/SDL2/.

cd ..
tar -czvf android-sdl2.tar.gz android-sdl2
