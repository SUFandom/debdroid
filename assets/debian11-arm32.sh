#!/bin/bash


DISTRO_NAME="Debian ARMv7"
DISTRO_COMMENT="32 Bit version of Modified Debian Stable (works with ARM64 too)"

TARBALL_URL['aarch64']="https://github.com/SUFandom/debdroid/releases/download/d-1.5/debian-arm32.tar.xz"
TARBALL_SHA256['aarch64']="4d907f0b596b5040fbf0fa41c9da5eea9049ff64bf2f54ddbd3ab0e317b16aa9"
TARBALL_URL['arm']="https://github.com/SUFandom/debdroid/releases/download/d-1.5/debian-arm32.tar.xz"
TARBALL_SHA256['arm']="4d907f0b596b5040fbf0fa41c9da5eea9049ff64bf2f54ddbd3ab0e317b16aa9"


distro_setup () {
# Don't update gvfs-daemons and udisks2 also blocks installation of tracker-miner-fs 
        run_proot_cmd apt-mark hold gvfs-daemons udisks2
        run_proot_cmd apt-mark hold tracker-miner-fs
}
