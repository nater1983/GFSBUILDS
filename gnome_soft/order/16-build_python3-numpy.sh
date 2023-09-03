#!/bin/bash
echo Building python3-numpy
cd ../python3-numpy  || exit 1
source python3-numpy.SlackBuild
upgradepkg --install-new --reinstall $OUTPUT/$PRGNAM-$VERSION-$ARCH-$BUILD$TAG.$PKGTYPE

