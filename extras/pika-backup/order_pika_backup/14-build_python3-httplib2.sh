#!/bin/bash
echo Building python3-httplib2
cd ../python3-httplib2 || exit 1
source python3-httplib2.SlackBuild
upgradepkg --install-new --reinstall
$OUTPUT/$PRGNAM-$VERSION-$ARCH-$BUILD$TAG.$PKGTYPE
