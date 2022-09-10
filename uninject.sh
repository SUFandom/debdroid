#!/bin/bash
while true ; do
read -p "Are you sure to remove the Debian ARM32? [Y/N]" ans
case $ans in
 [Yy]*)
 echo "Removing Filesystem"
 rm -rf $PREFIX/var/lib/proot-distro/installed-rootfs/debian11-arm32
 echo "Done" 
 break ;;
 [Nn]*)
 break ;;
 *)
 ;;
esac
done
exit