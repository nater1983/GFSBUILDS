#!/bin/bash
echo Building Solanum
cd ../Solanum  || exit 1
source Solanum.SlackBuild
upgradepkg --install-new --reinstall $OUTPUT/$PRGNAM-$VERSION-$ARCH-$BUILD$TAG.$PKGTYPE

