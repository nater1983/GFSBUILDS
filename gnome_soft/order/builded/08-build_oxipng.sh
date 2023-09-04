#!/bin/bash
echo Building oxipng
cd ../oxipng  || exit 1
source oxipng.SlackBuild
upgradepkg --install-new --reinstall $OUTPUT/$PRGNAM-$VERSION-$ARCH-$BUILD$TAG.$PKGTYPE

