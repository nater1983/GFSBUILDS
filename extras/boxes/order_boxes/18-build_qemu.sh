#!/bin/bash
echo Building qemu
cd ../qemu || exit 1
source qemu.SlackBuild
upgradepkg --install-new --reinstall $OUTPUT/$PRGNAM-$VERSION-$ARCH-$BUILD$TAG.$PKGTYPE
