#!/bin/bash

cd ../gobject-introspection || exit 1

source gobject-introspection.SlackBuild
upgradepkg --install-new --reinstall $OUTPUT/$PKGNAM-$VERSION-$ARCH-$BUILD$TAG.$PKGTYPE
