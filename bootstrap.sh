#!/bin/bash

echo "$SHELL" > shell-id.txt
if (grep -i "/data/data/com.termux/files/usr/bin/bash" shell-id.txt)
then
echo ""
rm -rf "shell-id.txt"
else
echo "Unsupported Shell, use Bash"
rm -rf "shell-id.txt"
exit 1
fi


echo "internet is required"
apt install figlet lolcat -y > /dev/null

if (command -v tput)
then
red_f=$(tput setaf 1)
red_b=$(tput setab 1)
green_f=$(tput setaf 2)
green_b=$(tput setab 2)
yellow_f=$(tput setaf 3)
yellow_b=$(tput setab 3)
blue_f=$(tput setaf 4)
blue_b=$(tput setab 4)
magenta_f=$(tput setaf 5)
magenta_b=$(tput setab 5)
cyan_f=$(tput setaf 6)
cyan_b=$(tput setab 6)
white_f=$(tput setaf 7)
white_b=$(tput setab 7)
else
red_f=""
red_b=""
green_f=""
green_b=""
yellow_f=""
yellow_b=""
blue_f=""
blue_b=""
magenta_f=""
magenta_b=""
cyan_f=""
cyan_b=""
white_f=""
white_b=""
fi 

user=$(whoami)
host=$(uname -n)
opsys=$(uname -o)
machine=$(uname -m)
kernel_nme=$(uname -s)
kernel_rel=$(uname -r)
kernel_ver=$(uname -v)
upt=$(uptime -p)
cal=$(date)

barrier="============================"


figlet "DebDroid" | lolcat
echo "Install wizard for Customized Debian Operating System" | lolcat
echo ""
echo "$barrier" | lolcat 
sleep 5
clear
echo "$green_f $bold System Info$norm"
echo "$barrier"
echo "$cyan_f Kernel: $kernel_nme$norm"
echo "$magenta_f Version: $kernel_ver$norm"
echo "$blue_f Release Date: $kernel_rel. $norm"
echo "$green_f Operating System: $opsys$norm"
echo "$yellow_f Linux Host: $host $norm"
echo "$ref_f CPU Architecture: $machine$norm"
echo "$white_f Device Uptime: $upt$norm"
echo "$red_f Date: $cal$norm"
echo "$barrier"

sleep 5

while true ; do
clear

echo "Select what kind of Debian do you want?" | lolcat
echo ""
echo "$barrier"
echo ""
echo "Debian ARM-32"
echo "  Usage: (32)"
echo ""
echo "Debian ARM64 - SOON!"
echo "  Unavailable"
echo ""
echo "Exit"
echo "  Usage: (0)"
echo "$barrier"
read -p "Pick ~$ " ans
case $ans in
  32)
    bash inject.sh -arm32 ; break ;;
  0)
    exit 0 ;;
  *)
    echo "Try again";;
esac
done