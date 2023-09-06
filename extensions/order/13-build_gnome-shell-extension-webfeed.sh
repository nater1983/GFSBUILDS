#!/bin/bash
PP=gnome-shell-extension-webfeed
echo 
cd ../gnome-shell-extension-webfeed || exit 1
source gnome-shell-extension-webfeed.SlackBuild
upgradepkg --install-new --reinstall $OUTPUT/$PRGNAM-$VERSION-$ARCH-$BUILD$TAG.$PKGTYPE
