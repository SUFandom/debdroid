#!/bin/bash


DISTRO_NAME="Debian ARMv7"
DISTRO_COMMENT="32 Bit version of Modified Debian Stable (works with ARM64 too)"

TARBALL_URL['aarch64']="https://github.com/SUFandom/debdroid/releases/download/d-1.2/debian-arm32.tar.xz"
TARBALL_SHA256['aarch64']="119706c9873d08413e6c7eb100c0aa4e3f5e1d37daa465beb2315ec959d5a6ad"
TARBALL_URL['arm']="https://github.com/SUFandom/debdroid/releases/download/d-1.1/debian-arm32.tar.xz"
TARBALL_SHA256['arm']="119706c9873d08413e6c7eb100c0aa4e3f5e1d37daa465beb2315ec959d5a6ad"


distro_setup () {
# Don't update gvfs-daemons and udisks2
        run_proot_cmd apt-mark hold
        gvfs-daemons udisks2
}
