#!/bin/bash
echo Building python-google-auth-httplib2
cd ../python-google-auth-httplib2 || exit 1
source python-google-auth-httplib2.SlackBuild
upgradepkg --install-new --reinstall $OUTPUT/$PRGNAM-$VERSION-$ARCH-$BUILD$TAG.$PKGTYPE
