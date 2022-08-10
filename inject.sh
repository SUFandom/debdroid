#!/bin/bash

if [ "$1" == "-arm32"  ]
then
cp -r assets/debian11-arm32.sh $PREFIX/etc/proot-distro
proot-distro install debian11-arm32
proot-distro login debian11-arm32
exit 0
fi 

echo "This script cant be executed manually"
exit 1
