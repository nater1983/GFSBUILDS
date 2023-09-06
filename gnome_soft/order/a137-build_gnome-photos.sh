#!/bin/bash
echo Building gnome-photos
cd ../gnome-photos  || exit 1
source gnome-photos.SlackBuild
upgradepkg --install-new --reinstall $OUTPUT/$PRGNAM-$VERSION-$ARCH-$BUILD$TAG.$PKGTYPE
