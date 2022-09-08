#!/bin/bash


DISTRO_NAME="Debian ARMv7"
DISTRO_COMMENT="32 Bit version of Modified Debian with XFCE by yours truly, SUFandom (works with ARM64 too)"

TARBALL_URL['aarch64']="https://github.com/SUFandom/debdroid/releases/download/d-1.1/debian-arm32.tar.gz"
TARBALL_SHA256['aarch64']="6e38eb32ccfa8e0229bf78705ae4c5a8cd8df2a646f2853f7931dfa2706e277a"
TARBALL_URL['arm']="https://github.com/SUFandom/debdroid/releases/download/d-1.1/debian-arm32.tar.gz"
TARBALL_SHA256['arm']="6e38eb32ccfa8e0229bf78705ae4c5a8cd8df2a646f2853f7931dfa2706e277a"


distro_setup () {
# Don't update gvfs-daemons and udisks2
        run_proot_cmd apt-mark hold
        gvfs-daemons udisks2
}
