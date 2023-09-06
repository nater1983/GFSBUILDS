#!/bin/bash
PP=gnome-shell-extension-desktop-icons-ng
echo 
cd ../gnome-shell-extension-desktop-icons-ng || exit 1
source gnome-shell-extension-desktop-icons-ng.SlackBuild
upgradepkg --install-new --reinstall $OUTPUT/$PRGNAM-$VERSION-$ARCH-$BUILD$TAG.$PKGTYPE
