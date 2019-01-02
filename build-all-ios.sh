#!/bin/bash

for arch in armv7 armv7s arm64 iphone simulator watch watchsimulator
do
    . ./setenv-ios.sh $arch
    if [ "$?" -eq "0" ]; then
        make -f GNUmakefile-cross distclean
        make -f GNUmakefile-cross static cryptest.exe
        make -f GNUmakefile-cross install PREFIX=./output/ios/$arch
    fi
done
