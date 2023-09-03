#!/bin/bash
echo Building zenity
cd ../zenity  || exit 1
source zenity.SlackBuild
upgradepkg --install-new --reinstall $OUTPUT/$PRGNAM-$VERSION-$ARCH-$BUILD$TAG.$PKGTYPE
