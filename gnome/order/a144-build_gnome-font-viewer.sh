#!/bin/bash
echo Building gnome-font-viewer
cd ../gnome-font-viewer  || exit 1
source gnome-font-viewer.SlackBuild
upgradepkg --install-new --reinstall $OUTPUT/$PRGNAM-$VERSION-$ARCH-$BUILD$TAG.$PKGTYPE
