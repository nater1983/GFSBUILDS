#!/bin/bash
echo Building gnome-shell
cd ../gnome-shell  || exit 1
source gnome-shell.SlackBuild
upgradepkg --install-new --reinstall $OUTPUT/$PRGNAM-$VERSION-$ARCH-$BUILD$TAG.$PKGTYPE
