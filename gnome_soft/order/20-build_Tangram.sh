#!/bin/bash
echo Building Tangram
cd ../Tangram  || exit 1
source Tangram.SlackBuild
upgradepkg --install-new --reinstall $OUTPUT/$PRGNAM-$VERSION-$ARCH-$BUILD$TAG.$PKGTYPE

