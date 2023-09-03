#!/bin/bash
echo Building gnome-disk-utility
cd ../gnome-disk-utility  || exit 1
source gnome-disk-utility.SlackBuild
upgradepkg --install-new --reinstall $OUTPUT/$PRGNAM-$VERSION-$ARCH-$BUILD$TAG.$PKGTYPE
