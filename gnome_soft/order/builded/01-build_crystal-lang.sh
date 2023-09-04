#!/bin/bash
echo Building crystal-lang
cd ../crystal-lang  || exit 1
source crystal-lang.SlackBuild
upgradepkg --install-new --reinstall $OUTPUT/$PRGNAM-$VERSION-$ARCH-$BUILD$TAG.$PKGTYPE
