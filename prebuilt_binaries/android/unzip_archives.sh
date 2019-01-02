#!/bin/sh

rm -rf release
mkdir release
cd release

unzip ../aarch64.zip
unzip ../arm.zip
unzip ../arm64-v8a.zip
unzip ../armeabi-v7a.zip
unzip ../armeabi.zip
unzip ../armv5.zip
unzip ../armv6.zip
unzip ../armv7-a.zip
unzip ../armv7.zip
unzip ../armv7a-neon.zip
unzip ../armv7a.zip
unzip ../armv8.zip
unzip ../armv8a.zip
unzip ../mips.zip
unzip ../mips64.zip
unzip ../mips64el.zip
unzip ../mipsel64.zip
unzip ../neon.zip
unzip ../x86.zip
unzip ../x86_64.zip
