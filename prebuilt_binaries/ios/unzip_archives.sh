#!/bin/sh

rm -rf temp

mkdir temp
cp *.zip temp

cd temp
unzip simulator.zip
unzip arm64.zip
unzip armv5.zip
unzip armv6.zip
unzip armv7.zip
unzip armv7s.zip
unzip armv8.zip

cd ..
