#!/bin/bash
echo Building python3-cachetools
cd ../python3-cachetools || exit 1
source python3-cachetools.SlackBuild
upgradepkg --install-new --reinstall
$OUTPUT/$PRGNAM-$VERSION-$ARCH-$BUILD$TAG.$PKGTYPE
