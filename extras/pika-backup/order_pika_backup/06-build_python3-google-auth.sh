#!/bin/bash
echo Building python3-google-auth
cd ../python3-google-auth || exit 1
source python3-google-auth.SlackBuild
upgradepkg --install-new --reinstall
$OUTPUT/$PRGNAM-$VERSION-$ARCH-$BUILD$TAG.$PKGTYPE
