#!/bin/bash
PP=gnome-shell-extension-show-desktop
echo 
cd ../gnome-shell-extension-show-desktop || exit 1
source gnome-shell-extension-show-desktop.SlackBuild
upgradepkg --install-new --reinstall $OUTPUT/$PRGNAM-$VERSION-$ARCH-$BUILD$TAG.$PKGTYPE
