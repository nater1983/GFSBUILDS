#!/bin/bash
echo Building python3-pyopenssl
cd ../python3-pyopenssl || exit 1
source python3-pyopenssl.SlackBuild
upgradepkg --install-new --reinstall
$OUTPUT/$PRGNAM-$VERSION-$ARCH-$BUILD$TAG.$PKGTYPE
