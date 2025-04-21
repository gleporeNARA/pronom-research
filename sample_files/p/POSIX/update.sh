#!/bin/sh

for f in *.h
do
cp -v /rh/usr/src/mulinux/include/linux/$f .
done
