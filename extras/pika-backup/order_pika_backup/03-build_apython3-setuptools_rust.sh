#!/bin/bash
echo Building python-setuptools_rust
cd ../python-setuptools_rust || exit 1
source python-setuptools-rust.SlackBuild
upgradepkg --install-new --reinstall $OUTPUT/$PRGNAM-$VERSION-$ARCH-$BUILD$TAG.$PKGTYPE
