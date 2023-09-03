#!/bin/bash
echo Building python3-setuptools_rust
cd ../python3-setuptools_rust || exit 1
source python3-setuptools_rust.SlackBuild
upgradepkg --install-new --reinstall
$OUTPUT/$PRGNAM-$VERSION-$ARCH-$BUILD$TAG.$PKGTYPE
