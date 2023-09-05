#!/bin/bash

cd ../glib-networking || exit 1

source glib-networking.SlackBuild
upgradepkg --install-new --reinstall $OUTPUT/$PRGNAM-$VERSION-$ARCH-$BUILD$TAG.$PKGTYPE

