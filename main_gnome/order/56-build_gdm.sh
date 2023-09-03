#!/bin/bash
echo Building gdm
cd ../gdm  || exit 1
source gdm.SlackBuild
upgradepkg --install-new --reinstall $OUTPUT/$PRGNAM-$VERSION-$ARCH-$BUILD$TAG.$PKGTYPE
