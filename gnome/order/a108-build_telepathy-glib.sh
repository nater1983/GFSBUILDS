#!/bin/bash
echo Building telepathy-glib
cd ../telepathy-glib  || exit 1
source telepathy-glib.SlackBuild
upgradepkg --install-new --reinstall $OUTPUT/$PRGNAM-$VERSION-$ARCH-$BUILD$TAG.$PKGTYPE
