#!/bin/bash
echo Building gnome-terminal
cd ../gnome-terminal  || exit 1
source gnome-terminal.SlackBuild
upgradepkg --install-new --reinstall $OUTPUT/$PRGNAM-$VERSION-$ARCH-$BUILD$TAG.$PKGTYPE
