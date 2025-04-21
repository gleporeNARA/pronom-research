#!/bin/sh

echo "Uninstalling Chinese Tools"

rm -rf /boot/home/config/etc/Chinese
rm -f  /boot/home/config/add-ons/input_server/methods/chinese
rm -f  /boot/home/config/bin/convertBig5

echo "Chinese Tools has been removed from your system."