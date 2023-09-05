#!/bin/bash
PP=python3-validators
echo "$PP" 
cd ../python3-validators || exit 1
source python3-validators.SlackBuild
upgradepkg --install-new --reinstall $OUTPUT/$PRGNAM-$VERSION-$ARCH-$BUILD$TAG.$PKGTYPE
