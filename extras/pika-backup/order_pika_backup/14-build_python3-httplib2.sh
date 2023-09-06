#!/bin/bash
echo Building python-httplib2
cd ../python-httplib2 || exit 1
source python-httplib2.SlackBuild
upgradepkg --install-new --reinstall $OUTPUT/$PRGNAM-$VERSION-$ARCH-$BUILD$TAG.$PKGTYPE
