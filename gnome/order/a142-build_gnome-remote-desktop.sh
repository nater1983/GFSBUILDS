#!/bin/bash
echo Building gnome-remote-desktop
cd ../gnome-remote-desktop  || exit 1
source gnome-remote-desktop.SlackBuild
upgradepkg --install-new --reinstall $OUTPUT/$PRGNAM-$VERSION-$ARCH-$BUILD$TAG.$PKGTYPE
