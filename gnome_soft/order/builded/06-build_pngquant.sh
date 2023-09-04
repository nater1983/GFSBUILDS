#!/bin/bash
echo Building pngquant
cd ../pngquant  || exit 1
source pngquant.SlackBuild
upgradepkg --install-new --reinstall $OUTPUT/$PRGNAM-$VERSION-$ARCH-$BUILD$TAG.$PKGTYPE

