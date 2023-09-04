#!/bin/bash
echo Building Authenticator
cd ../Authenticator  || exit 1
source Authenticator.SlackBuild
upgradepkg --install-new --reinstall $OUTPUT/$PRGNAM-$VERSION-$ARCH-$BUILD$TAG.$PKGTYPE
