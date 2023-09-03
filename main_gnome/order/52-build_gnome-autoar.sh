#!/bin/bash
echo Building gnome-autoar
cd ../gnome-autoar  || exit 1
source gnome-autoar.SlackBuild
upgradepkg --install-new --reinstall $OUTPUT/$PRGNAM-$VERSION-$ARCH-$BUILD$TAG.$PKGTYPE
