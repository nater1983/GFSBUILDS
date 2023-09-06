#!/bin/bash
PP=gnome-shell-extension-dash-to-dock
echo 
cd ../gnome-shell-extension-dash-to-dock || exit 1
source gnome-shell-extension-dash-to-dock.SlackBuild
upgradepkg --install-new --reinstall $OUTPUT/$PRGNAM-$VERSION-$ARCH-$BUILD$TAG.$PKGTYPE
