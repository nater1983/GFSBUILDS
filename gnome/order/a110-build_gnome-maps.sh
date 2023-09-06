#!/bin/bash
echo Building gnome-maps
cd ../gnome-maps  || exit 1
source gnome-maps.SlackBuild
upgradepkg --install-new --reinstall $OUTPUT/$PRGNAM-$VERSION-$ARCH-$BUILD$TAG.$PKGTYPE
