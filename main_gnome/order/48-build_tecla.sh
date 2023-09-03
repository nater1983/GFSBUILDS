#!/bin/bash
echo Building tecla
cd ../tecla  || exit 1
source tecla.SlackBuild
upgradepkg --install-new --reinstall $OUTPUT/$PRGNAM-$VERSION-$ARCH-$BUILD$TAG.$PKGTYPE
