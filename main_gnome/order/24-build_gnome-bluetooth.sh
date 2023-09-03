#!/bin/bash
echo Building gnome-bluetooth
cd ../gnome-bluetooth  || exit 1
source gnome-bluetooth.SlackBuild
upgradepkg --install-new --reinstall $OUTPUT/$PRGNAM-$VERSION-$ARCH-$BUILD$TAG.$PKGTYPE
