#!/bin/bash


DISTRO_NAME="Debian ARMv7"
DISTRO_COMMENT="32 Bit version of Modified Debian Stable (works with ARM64 too)"

TARBALL_URL['aarch64']="https://github.com/SUFandom/debdroid/releases/download/d-1.4.1/debian-arm32.tar.xz"
TARBALL_SHA256['aarch64']="dddf503a5781906830f623c802d1a1b02a6c90e0b4a658878e7cbd12184dd09f"
TARBALL_URL['arm']="https://github.com/SUFandom/debdroid/releases/download/d-1.4.1/debian-arm32.tar.xz"
TARBALL_SHA256['arm']="dddf503a5781906830f623c802d1a1b02a6c90e0b4a658878e7cbd12184dd09f"


distro_setup () {
# Don't update gvfs-daemons and udisks2 also blocks installation of tracker-miner-fs 
        run_proot_cmd apt-mark hold gvfs-daemons udisks2
        run_proot_cmd apt-mark hold tracker-miner-fs
}
