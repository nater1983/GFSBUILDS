#!/bin/bash
PP=gnome-shell-extension-arc-menu
echo 
cd ../gnome-shell-extension-arc-menu || exit 1
source gnome-shell-extension-arc-menu.SlackBuild
upgradepkg --install-new --reinstall $OUTPUT/$PRGNAM-$VERSION-$ARCH-$BUILD$TAG.$PKGTYPE
