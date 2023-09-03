#!/bin/bash
echo Building python3-cryptography
cd ../python3-cryptography || exit 1
source python3-cryptography.SlackBuild
upgradepkg --install-new --reinstall
$OUTPUT/$PRGNAM-$VERSION-$ARCH-$BUILD$TAG.$PKGTYPE
