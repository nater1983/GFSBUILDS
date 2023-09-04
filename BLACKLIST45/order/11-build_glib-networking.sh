#!/bin/bash

cd ../glib-networking || exit 1

source glib-networking.SlackBuild
upgradepkg --install-new --reinstall $OUTPUT/$PKGNAM-$VERSION-$ARCH-$BUILD$TAG.$PKGTYPE

