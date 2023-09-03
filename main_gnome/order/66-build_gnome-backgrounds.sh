#!/bin/bash
echo Building gnome-backgrounds
cd ../gnome-backgrounds  || exit 1
source gnome-backgrounds.SlackBuild
upgradepkg --install-new --reinstall $OUTPUT/$PRGNAM-$VERSION-$ARCH-$BUILD$TAG.$PKGTYPE
