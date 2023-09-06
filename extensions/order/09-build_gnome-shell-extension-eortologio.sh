#!/bin/bash
PP=gnome-shell-extension-eortologio
echo 
cd ../gnome-shell-extension-eortologio || exit 1
source gnome-shell-extension-eortologio.SlackBuild
upgradepkg --install-new --reinstall $OUTPUT/$PRGNAM-$VERSION-$ARCH-$BUILD$TAG.$PKGTYPE
