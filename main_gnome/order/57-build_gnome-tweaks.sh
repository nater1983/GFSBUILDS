#!/bin/bash
echo Building gnome-tweaks

cd ../gnome-tweaks  || exit 1
source gnome-tweaks.SlackBuild
upgradepkg --install-new --reinstall $OUTPUT/$PRGNAM-$VERSION-$ARCH-$BUILD$TAG.$PKGTYPE
