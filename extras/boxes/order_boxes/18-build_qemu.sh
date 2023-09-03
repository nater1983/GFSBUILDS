#!/bin/bash
echo Building qemu
cd ../qemu || exit 1
source qemu.SlackBuild
upgradepkg --install-new --reinstall
$OUTPUT/$PKGNAM-$VERSION-$ARCH-$BUILD$TAG.$PKGTYPE
