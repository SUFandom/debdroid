#!/bin/bash

if [ "$1" == "-arm32"  ]
then
cp -r assets/debian11-arm32.sh $PREFIX/etc/proot-distro
proot-distro install debian11-arm32
proot-distro login debian11-arm32 --/usr/bin/apt update
proot-distro login debian11-arm32 --/usr/bin/apt upgrade -y
proot-distro login debian11-arm32 --/usr/bin/apt install git -y
proot-distro login debian11-arm32 --/usr/bin/git clone https://github.com/SUFandom/debdroid-starter
clear
echo "Please Start debdroid-starter to continue setup at /root/debdroid-starter, dont forget to chmod +x .sh files to work."
sleep 10
proot-distro login debian11-arm32 
exit 0
fi 

echo "This script cant be executed manually"
exit 1
