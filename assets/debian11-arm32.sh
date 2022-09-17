#!/bin/bash


DISTRO_NAME="Debian ARMv7"
DISTRO_COMMENT="32 Bit version of Modified Debian Stable (works with ARM64 too)"

TARBALL_URL['aarch64']="https://github.com/SUFandom/debdroid/releases/download/d-1.4.2/debian-arm32.tar.xz"
TARBALL_SHA256['aarch64']="af40cb429968fc986bde4d15c2cb9d5fa983176f0b4ccd8bcca40d96b82fa691"
TARBALL_URL['arm']="https://github.com/SUFandom/debdroid/releases/download/d-1.4.2/debian-arm32.tar.xz"
TARBALL_SHA256['arm']="af40cb429968fc986bde4d15c2cb9d5fa983176f0b4ccd8bcca40d96b82fa691"


distro_setup () {
# Don't update gvfs-daemons and udisks2 also blocks installation of tracker-miner-fs 
        run_proot_cmd apt-mark hold gvfs-daemons udisks2
        run_proot_cmd apt-mark hold tracker-miner-fs
}
