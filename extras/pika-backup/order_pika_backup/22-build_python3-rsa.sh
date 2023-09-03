#!/bin/bash
echo Building python3-rsa
cd ../python3-rsa || exit 1
source python3-rsa.SlackBuild
upgradepkg --install-new --reinstall
$OUTPUT/$PRGNAM-$VERSION-$ARCH-$BUILD$TAG.$PKGTYPE
