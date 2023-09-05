#!/bin/bash

cd ../libsoup3 || exit 1

source libsoup3.SlackBuild
upgradepkg --install-new --reinstall $OUTPUT/$PRGNAM-$VERSION-$ARCH-$BUILD$TAG.$PKGTYPE
