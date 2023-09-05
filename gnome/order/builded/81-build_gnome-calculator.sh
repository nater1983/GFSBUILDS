#!/bin/bash
echo Building gnome-calculator
cd ../gnome-calculator  || exit 1
source gnome-calculator.SlackBuild
upgradepkg --install-new --reinstall $OUTPUT/$PRGNAM-$VERSION-$ARCH-$BUILD$TAG.$PKGTYPE
