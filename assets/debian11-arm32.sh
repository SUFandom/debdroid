#!/bin/bash


DISTRO_NAME="Debian ARMv7"
DISTRO_COMMENT="32 Bit version of Modified Debian with XFCE by yours truly, SUFandom (works with ARM64 too)"

TARBALL_URL['aarch64']="https://github.com/SUFandom/debdroid/releases/download/d-1/debian-arm32.tar.gz"
TARBALL_SHA256['aarch64']="1e6e1873510c8fc335918c9a4c70598730fe3e6ef03a745cc2c31990c4e930f5"
TARBALL_URL['arm']="https://github.com/SUFandom/debdroid/releases/download/d-1/debian-arm32.tar.gz"
TARBALL_SHA256['arm']="1e6e1873510c8fc335918c9a4c70598730fe3e6ef03a745cc2c31990c4e930f5"


distro_setup () {
# Don't update gvfs-daemons and udisks2
        run_proot_cmd apt-mark hold
        gvfs-daemons udisks2
}
