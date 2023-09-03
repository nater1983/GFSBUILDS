#!/bin/bash

cd ../gtk4 || exit 1

source gtk4.SlackBuild
upgradepkg --install-new --reinstall $OUTPUT/$PKGNAM-$VERSION-$ARCH-$BUILD$TAG.$PKGTYPE
