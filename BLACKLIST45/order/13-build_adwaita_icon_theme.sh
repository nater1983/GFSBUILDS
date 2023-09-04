#!/bin/bash

cd ../adwaita-icon-theme || exit 1

source adwaita-icon-theme.SlackBuild
upgradepkg --install-new --reinstall $OUTPUT/$PKGNAM-$VERSION-$ARCH-$BUILD$TAG.$PKGTYPE

