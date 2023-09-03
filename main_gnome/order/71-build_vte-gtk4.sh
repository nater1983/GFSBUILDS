#!/bin/bash
echo Building vte-gtk4
cd ../vte-gtk4  || exit 1
source vte-gtk4.SlackBuild
upgradepkg --install-new --reinstall $OUTPUT/$PRGNAM-$VERSION-$ARCH-$BUILD$TAG.$PKGTYPE
