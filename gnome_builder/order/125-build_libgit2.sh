#!/bin/bash
echo Building libgit2
cd ../libgit2  || exit 1
source libgit2.SlackBuild
upgradepkg --install-new --reinstall $OUTPUT/$PRGNAM-$VERSION-$ARCH-$BUILD$TAG.$PKGTYPE
