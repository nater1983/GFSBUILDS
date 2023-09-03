#!/bin/bash
echo Building gnome-console
cd ../gnome-console  || exit 1
source gnome-console.SlackBuild
upgradepkg --install-new --reinstall $OUTPUT/$PRGNAM-$VERSION-$ARCH-$BUILD$TAG.$PKGTYPE
