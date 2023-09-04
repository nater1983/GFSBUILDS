#!/bin/bash
echo Building libnfs
cd ../libnfs || exit 1
source libnfs.SlackBuild
upgradepkg --install-new --reinstall $OUTPUT/$PRGNAM-$VERSION-$ARCH-$BUILD$TAG.$PKGTYPE
