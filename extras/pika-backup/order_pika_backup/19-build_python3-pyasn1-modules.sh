#!/bin/bash
echo Building python3-pyasn1-modules
cd ../python3-pyasn1-modules || exit 1
source python3-pyasn1-modules.SlackBuild
upgradepkg --install-new --reinstall
$OUTPUT/$PRGNAM-$VERSION-$ARCH-$BUILD$TAG.$PKGTYPE
