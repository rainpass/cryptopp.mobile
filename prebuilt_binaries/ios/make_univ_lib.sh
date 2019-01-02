#!/bin/sh

cd temp
cp ./simulator/lib/libcryptopp.a libcryptopp.simulator.a
#cp ./aarch64/lib/libcryptopp.a libcryptopp.aarch64.a   same to arm64
#cp ./appletv/lib/libcryptopp.a libcryptopp.appletv.a   same to arm64
#cp ./appletvos/lib/libcryptopp.a libcryptopp.appletvos.a   same to arm64
#cp ./applewatch/lib/libcryptopp.a libcryptopp.applewatch.a same to armv7
cp ./arm64/lib/libcryptopp.a libcryptopp.arm64.a
cp ./armv5/lib/libcryptopp.a libcryptopp.armv5.a
cp ./armv6/lib/libcryptopp.a libcryptopp.armv6.a
cp ./armv7/lib/libcryptopp.a libcryptopp.armv7.a
cp ./armv7s/lib/libcryptopp.a libcryptopp.armv7s.a
cp ./armv8/lib/libcryptopp.a libcryptoppp.armv8.a
#cp ./iphone/lib/libcryptopp.a libcryptopp.iphone.a  same to armv7
#cp ./iphoneos/lib/libcryptopp.a libcryptopp.iphoneos.a   same to armv7
#cp ./tv/lib/libcryptopp.a libcryptopp.tv.a    same to arm64
#cp ./watch/lib/libcryptopp.a libcryptopp.watch.a  same to armv7
#cp ./watchos/lib/libcryptopp.a libcryptopp.watchos.a   same to armv7

lipo -create libcryptopp.*.a -o libcryptopp.a

rm -rf include
rm -rf lib

mkdir -p release/include
mkdir -p release/lib

cp -r ./arm64/include/* ./release/include
mv libcryptopp.a ./release/lib

mv release ..
cd ..

