#!/bin/bash
echo Building Flatseal
cd ../Flatseal  || exit 1
source Flatseal.SlackBuild
upgradepkg --install-new --reinstall $OUTPUT/$PRGNAM-$VERSION-$ARCH-$BUILD$TAG.$PKGTYPE

