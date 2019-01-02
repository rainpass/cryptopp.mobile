#!/bin/bash

for arch in x86 x86_64 arm armv5 armv6 armv7 armeabi armv7a armv7-a armeabi-v7a hard armv7a-hard armeabi-v7a-hard neon armv7a-neon armv8 armv8a aarch64 arm64-v8a mips mips64 mipsel64 mips64el
do
  ./build-android.sh $arch
#    . ./setenv-android.sh $arch stlport
#    if [ "$?" -eq "0" ]; then
#        make -f GNUmakefile-cross distclean
#        make -f GNUmakefile-cross static cryptest.exe
#        make -f GNUmakefile-cross install PREFIX=./output/android/$arch
#    fi
done
