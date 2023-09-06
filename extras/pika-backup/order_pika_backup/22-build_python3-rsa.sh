#!/bin/bash
echo Building python-rsa
cd ../python-rsa || exit 1
source python-rsa.SlackBuild
upgradepkg --install-new --reinstall $OUTPUT/$PRGNAM-$VERSION-$ARCH-$BUILD$TAG.$PKGTYPE
