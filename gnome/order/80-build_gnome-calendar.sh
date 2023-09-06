#!/bin/bash
echo Building gnome-calendar
cd ../gnome-calendar  || exit 1
source gnome-calendar.SlackBuild
upgradepkg --install-new --reinstall $OUTPUT/$PRGNAM-$VERSION-$ARCH-$BUILD$TAG.$PKGTYPE
