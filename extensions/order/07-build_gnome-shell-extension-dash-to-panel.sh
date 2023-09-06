#!/bin/bash
PP=gnome-shell-extension-dash-to-panel
echo 
cd ../gnome-shell-extension-dash-to-panel || exit 1
source gnome-shell-extension-dash-to-panel.SlackBuild
upgradepkg --install-new --reinstall $OUTPUT/$PRGNAM-$VERSION-$ARCH-$BUILD$TAG.$PKGTYPE
