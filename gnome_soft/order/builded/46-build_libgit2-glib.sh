#!/bin/bash
echo Building libgit2-glib
cd ../libgit2-glib  || exit 1
source libgit2-glib.SlackBuild
upgradepkg --install-new --reinstall $OUTPUT/$PRGNAM-$VERSION-$ARCH-$BUILD$TAG.$PKGTYPE
