#!/bin/bash
PP=gnome-shell-extension-tray-icons-reloaded
echo 
cd ../gnome-shell-extension-tray-icons-reloaded || exit 1
source gnome-shell-extension-tray-icons-reloaded.SlackBuild
upgradepkg --install-new --reinstall $OUTPUT/$PRGNAM-$VERSION-$ARCH-$BUILD$TAG.$PKGTYPE
