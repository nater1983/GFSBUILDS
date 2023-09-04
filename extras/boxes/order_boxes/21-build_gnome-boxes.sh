#!/bin/bash
echo Building gnome-boxes
cd ../gnome-boxes || exit 1
source gnome-boxes.SlackBuild
upgradepkg --install-new --reinstall $OUTPUT/$PRGNAM-$VERSION-$ARCH-$BUILD$TAG.$PKGTYPE
