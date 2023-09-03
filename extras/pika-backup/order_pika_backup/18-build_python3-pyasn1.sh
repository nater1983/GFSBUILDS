#!/bin/bash
echo Building python3-pyasn1
cd ../python3-pyasn1 || exit 1
source python3-pyasn1.SlackBuild
upgradepkg --install-new --reinstall
$OUTPUT/$PRGNAM-$VERSION-$ARCH-$BUILD$TAG.$PKGTYPE
