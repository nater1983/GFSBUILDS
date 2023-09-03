#!/bin/bash
echo Building libstemmer
cd ../libstemmer  || exit 1
source libstemmer.SlackBuild
upgradepkg --install-new --reinstall $OUTPUT/$PRGNAM-$VERSION-$ARCH-$BUILD$TAG.$PKGTYPE
