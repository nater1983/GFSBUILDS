#!/bin/bash
echo Building gnome-weather
cd ../gnome-weather  || exit 1
source gnome-weather.SlackBuild
upgradepkg --install-new --reinstall $OUTPUT/$PRGNAM-$VERSION-$ARCH-$BUILD$TAG.$PKGTYPE
