#!/bin/bash

for arch in simulator iphonesimulator watchsimulator tvsimulator appletvsimulator
do
    . ./setenv-ios.sh $arch
    if [ "$?" -eq "0" ]; then
        make -f GNUmakefile-cross distclean
        make -f GNUmakefile-cross static IOS_FLAGS=-DCRYPTOPP_DISABLE_SSSE3
        make -f GNUmakefile-cross install PREFIX=./output/ios/$arch
    fi
done

for arch in armv5 armv6 armv7 armv7s arm64 armv8 aarch64 iphone iphoneos watch watchos applewatch tv appletv appletvos 
do
    . ./setenv-ios.sh $arch
    if [ "$?" -eq "0" ]; then
        make -f GNUmakefile-cross distclean
        make -f GNUmakefile-cross static
        make -f GNUmakefile-cross install PREFIX=./output/ios/$arch
    fi
done
