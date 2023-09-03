#!/bin/bash

cd ../librsvg || exit 1

source librsvg.SlackBuild
upgradepkg --install-new --reinstall $OUTPUT/$PKGNAM-$VERSION-$ARCH-$BUILD$TAG.$PKGTYPE

