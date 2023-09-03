#!/bin/bash
echo Building gnome-clocks
cd ../gnome-clocks  || exit 1
source gnome-clocks.SlackBuild
upgradepkg --install-new --reinstall $OUTPUT/$PRGNAM-$VERSION-$ARCH-$BUILD$TAG.$PKGTYPE
