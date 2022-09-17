#!/bin/bash


DISTRO_NAME="Debian ARMv7"
DISTRO_COMMENT="32 Bit version of Modified Debian Stable (works with ARM64 too)"

TARBALL_URL['aarch64']="https://github.com/SUFandom/debdroid/releases/download/d-1.4.3/debian-arm32.tar.xz"
TARBALL_SHA256['aarch64']="a3b78795cf83c024d2335aa9ec29b5de73a421020961dc15e88ae4a37e35e481"
TARBALL_URL['arm']="https://github.com/SUFandom/debdroid/releases/download/d-1.4.3/debian-arm32.tar.xz"
TARBALL_SHA256['arm']="a3b78795cf83c024d2335aa9ec29b5de73a421020961dc15e88ae4a37e35e481"


distro_setup () {
# Don't update gvfs-daemons and udisks2 also blocks installation of tracker-miner-fs 
        run_proot_cmd apt-mark hold gvfs-daemons udisks2
        run_proot_cmd apt-mark hold tracker-miner-fs
}
