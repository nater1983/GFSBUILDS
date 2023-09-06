#!/bin/bash
PP=gnome-shell-extension-autohide-battery
echo 
cd ../gnome-shell-extension-autohide-battery || exit 1
source gnome-shell-extension-autohide-battery.SlackBuild
upgradepkg --install-new --reinstall $OUTPUT/$PRGNAM-$VERSION-$ARCH-$BUILD$TAG.$PKGTYPE
