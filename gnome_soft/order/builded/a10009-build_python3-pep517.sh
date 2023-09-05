#!/bin/bash
PP=python3-pep517
echo "$PP" 
cd ../python3-pep517 || exit 1
source python3-pep517.SlackBuild 
upgradepkg --install-new --reinstall $OUTPUT/$PRGNAM-$VERSION-$ARCH-$BUILD$TAG.$PKGTYPE
