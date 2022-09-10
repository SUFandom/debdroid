#!/bin/bash


DISTRO_NAME="Debian ARMv7"
DISTRO_COMMENT="32 Bit version of Modified Debian Stable (works with ARM64 too)"

TARBALL_URL['aarch64']="https://github.com/SUFandom/debdroid/releases/download/d-1.3/debian-arm32.tar.xz"
TARBALL_SHA256['aarch64']="5c56bc36222719e3b57e854710aeddb346f7bb62065231f80f978a8c8ed956b6"
TARBALL_URL['arm']="https://github.com/SUFandom/debdroid/releases/download/d-1.3/debian-arm32.tar.xz"
TARBALL_SHA256['arm']="5c56bc36222719e3b57e854710aeddb346f7bb62065231f80f978a8c8ed956b6"


distro_setup () {
# Don't update gvfs-daemons and udisks2
        run_proot_cmd apt-mark hold
        gvfs-daemons udisks2
}
