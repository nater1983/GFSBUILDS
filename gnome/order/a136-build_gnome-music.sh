#!/bin/bash
echo Building gnome-music
cd ../gnome-music  || exit 1
source gnome-music.SlackBuild
upgradepkg --install-new --reinstall $OUTPUT/$PRGNAM-$VERSION-$ARCH-$BUILD$TAG.$PKGTYPE
