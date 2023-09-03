#!/bin/bash
echo Building python3-pydrive2
cd ../python3-pydrive2 || exit 1
source python3-pydrive2.SlackBuild
upgradepkg --install-new --reinstall
$OUTPUT/$PRGNAM-$VERSION-$ARCH-$BUILD$TAG.$PKGTYPE
