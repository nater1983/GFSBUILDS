#!/bin/bash
echo Building gnome-control-center
cd ../gnome-control-center  || exit 1
source gnome-control-center.SlackBuild
upgradepkg --install-new --reinstall $OUTPUT/$PRGNAM-$VERSION-$ARCH-$BUILD$TAG.$PKGTYPE
