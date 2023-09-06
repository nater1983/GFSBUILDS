#!/bin/bash
echo Building python-pyopenssl
cd ../python-pyopenssl || exit 1
source python-pyopenssl.SlackBuild
upgradepkg --install-new --reinstall $OUTPUT/$PRGNAM-$VERSION-$ARCH-$BUILD$TAG.$PKGTYPE
