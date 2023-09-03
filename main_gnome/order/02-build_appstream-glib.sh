#!/bin/bash
echo Building appstream-glib
cd ../appstream-glib  || exit 1
source appstream-glib.SlackBuild
upgradepkg --install-new --reinstall $OUTPUT/$PRGNAM-$VERSION-$ARCH-$BUILD$TAG.$PKGTYPE
