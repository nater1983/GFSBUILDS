#!/bin/bash
echo Building gnome-user-docs
cd ../gnome-user-docs  || exit 1
source gnome-user-docs.SlackBuild
upgradepkg --install-new --reinstall $OUTPUT/$PRGNAM-$VERSION-$ARCH-$BUILD$TAG.$PKGTYPE
