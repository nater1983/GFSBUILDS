#!/bin/bash
echo Building orca
cd ../orca  || exit 1
source orca.SlackBuild
upgradepkg --install-new --reinstall $OUTPUT/$PRGNAM-$VERSION-$ARCH-$BUILD$TAG.$PKGTYPE
