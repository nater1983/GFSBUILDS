#!/bin/bash
echo Building gnome-characters
cd ../gnome-characters  || exit 1
source gnome-characters.SlackBuild
upgradepkg --install-new --reinstall $OUTPUT/$PRGNAM-$VERSION-$ARCH-$BUILD$TAG.$PKGTYPE
