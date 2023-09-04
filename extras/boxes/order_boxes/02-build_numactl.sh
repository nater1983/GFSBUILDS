#!/bin/bash
echo Building numactl
cd ../numactl || exit 1
source numactl.SlackBuild
upgradepkg --install-new --reinstall $OUTPUT/$PRGNAM-$VERSION-$ARCH-$BUILD$TAG.$PKGTYPE
