#!/bin/bash
echo Building xdg-desktop-portal
cd ../xdg-desktop-portal  || exit 1
source xdg-desktop-portal.SlackBuild
upgradepkg --install-new --reinstall $OUTPUT/$PRGNAM-$VERSION-$ARCH-$BUILD$TAG.$PKGTYPE
