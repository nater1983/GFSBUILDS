#!/bin/bash
echo Building python-pyasn1
cd ../python-pyasn1 || exit 1
source python-pyasn1.SlackBuild
upgradepkg --install-new --reinstall $OUTPUT/$PRGNAM-$VERSION-$ARCH-$BUILD$TAG.$PKGTYPE
