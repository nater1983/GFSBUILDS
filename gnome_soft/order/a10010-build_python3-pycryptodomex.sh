#!/bin/bash
PP=python3-pycryptodomex
echo "$PP" 
cd ../python3-pycryptodomex || exit 1
source python3-pycryptodomex.SlackBuild
upgradepkg --install-new --reinstall $OUTPUT/$PRGNAM-$VERSION-$ARCH-$BUILD$TAG.$PKGTYPE
