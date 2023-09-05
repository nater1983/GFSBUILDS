#!/bin/bash

cd ../adwaita-icon-theme || exit 1

source adwaita-icon-theme.SlackBuild
upgradepkg --install-new --reinstall $OUTPUT/$PRGNAM-$VERSION-$ARCH-$BUILD$TAG.$PKGTYPE

