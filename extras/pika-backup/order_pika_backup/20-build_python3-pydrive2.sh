#!/bin/bash
echo Building python-pydrive2
cd ../python-pydrive2 || exit 1
source python-pydrive2.SlackBuild
upgradepkg --install-new --reinstall $OUTPUT/$PRGNAM-$VERSION-$ARCH-$BUILD$TAG.$PKGTYPE
