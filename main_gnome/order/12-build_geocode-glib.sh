#!/bin/bash
echo Building geocode-glib
cd ../geocode-glib  || exit 1
source geocode-glib.SlackBuild
upgradepkg --install-new --reinstall $OUTPUT/$PRGNAM-$VERSION-$ARCH-$BUILD$TAG.$PKGTYPE
