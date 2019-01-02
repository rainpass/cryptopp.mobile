#!/bin/bash

arch=$1
echo $arch
    . ./setenv-android.sh $arch stlport
    if [ "$?" -eq "0" ]; then
        make -f GNUmakefile-cross distclean
        make -f GNUmakefile-cross static cryptest.exe
        make -f GNUmakefile-cross install PREFIX=./output/android/$arch
    fi
