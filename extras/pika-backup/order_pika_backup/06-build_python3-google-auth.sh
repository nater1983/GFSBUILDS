#!/bin/bash
echo Building python-google-auth
cd ../python-google-auth || exit 1
source python-google-auth.SlackBuild
upgradepkg --install-new --reinstall $OUTPUT/$PRGNAM-$VERSION-$ARCH-$BUILD$TAG.$PKGTYPE
