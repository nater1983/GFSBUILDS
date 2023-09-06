#!/bin/bash
echo Building python-cachetools
cd ../python-cachetools || exit 1
source python-cachetools.SlackBuild
upgradepkg --install-new --reinstall $OUTPUT/$PRGNAM-$VERSION-$ARCH-$BUILD$TAG.$PKGTYPE
