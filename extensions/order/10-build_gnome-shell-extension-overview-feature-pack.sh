#!/bin/bash
PP=gnome-shell-extension-overview-feature-pack
echo 
cd ../gnome-shell-extension-overview-feature-pack || exit 1
source gnome-shell-extension-overview-feature-pack.SlackBuild
upgradepkg --install-new --reinstall $OUTPUT/$PRGNAM-$VERSION-$ARCH-$BUILD$TAG.$PKGTYPE
