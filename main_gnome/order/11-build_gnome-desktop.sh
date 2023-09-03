#!/bin/bash
echo Building gnome-desktop
cd ../gnome-desktop  || exit 1
source gnome-desktop.SlackBuild
upgradepkg --install-new --reinstall $OUTPUT/$PRGNAM-$VERSION-$ARCH-$BUILD$TAG.$PKGTYPE
