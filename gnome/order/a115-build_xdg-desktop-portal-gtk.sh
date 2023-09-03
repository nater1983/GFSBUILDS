#!/bin/bash
echo Building xdg-desktop-portal-gtk
cd ../xdg-desktop-portal-gtk  || exit 1
source xdg-desktop-portal-gtk.SlackBuild
upgradepkg --install-new --reinstall $OUTPUT/$PRGNAM-$VERSION-$ARCH-$BUILD$TAG.$PKGTYPE
