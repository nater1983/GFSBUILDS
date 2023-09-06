#!/bin/bash
echo Building xdg-desktop-portal-gnome
cd ../xdg-desktop-portal-gnome  || exit 1
source xdg-desktop-portal-gnome.SlackBuild
upgradepkg --install-new --reinstall $OUTPUT/$PRGNAM-$VERSION-$ARCH-$BUILD$TAG.$PKGTYPE
