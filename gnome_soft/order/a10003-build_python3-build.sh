#!/bin/bash
PP=python3-build
echo "$PP" 
cd ../python3-build || exit 1
source python3-build.SlackBuild
upgradepkg --install-new --reinstall $OUTPUT/$PRGNAM-$VERSION-$ARCH-$BUILD$TAG.$PKGTYPE
