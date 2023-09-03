#!/bin/bash

cd ../gtkmm4 || exit 1

source gtkmm4.SlackBuild
upgradepkg --install-new --reinstall $OUTPUT/$PKGNAM-$VERSION-$ARCH-$BUILD$TAG.$PKGTYPE

