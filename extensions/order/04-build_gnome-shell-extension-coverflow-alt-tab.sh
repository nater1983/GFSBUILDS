#!/bin/bash
PP=gnome-shell-extension-coverflow-alt-tab
echo 
cd ../gnome-shell-extension-coverflow-alt-tab || exit 1
source gnome-shell-extension-coverflow-alt-tab.SlackBuild
upgradepkg --install-new --reinstall $OUTPUT/$PRGNAM-$VERSION-$ARCH-$BUILD$TAG.$PKGTYPE
