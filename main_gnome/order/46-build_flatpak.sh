#!/bin/bash
echo Building flatpak
cd ../flatpak  || exit 1
source flatpak.SlackBuild
upgradepkg --install-new --reinstall $OUTPUT/$PRGNAM-$VERSION-$ARCH-$BUILD$TAG.$PKGTYPE
