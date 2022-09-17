#!/bin/bash


DISTRO_NAME="Debian ARMv7"
DISTRO_COMMENT="32 Bit version of Modified Debian Stable (works with ARM64 too)"

TARBALL_URL['aarch64']="https://github.com/SUFandom/debdroid/releases/download/d-1.4/debian-arm32.tar.xz"
TARBALL_SHA256['aarch64']="61396c92f1c218c8b482780f737a149478c168a8f26d22d2173dbf54267c6b52"
TARBALL_URL['arm']="https://github.com/SUFandom/debdroid/releases/download/d-1.4/debian-arm32.tar.xz"
TARBALL_SHA256['arm']="61396c92f1c218c8b482780f737a149478c168a8f26d22d2173dbf54267c6b52"


distro_setup () {
# Don't update gvfs-daemons and udisks2
        run_proot_cmd apt-mark hold gvfs-daemons udisks2
        run_proot_cmd apt-mark hold tracker-miner-fs
}
