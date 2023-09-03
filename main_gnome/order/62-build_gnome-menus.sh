#!/bin/bash
echo Building gnome-menus
cd ../gnome-menus  || exit 1
source gnome-menus.SlackBuild
upgradepkg --install-new --reinstall $OUTPUT/$PRGNAM-$VERSION-$ARCH-$BUILD$TAG.$PKGTYPE
