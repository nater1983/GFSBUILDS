#!/bin/bash
echo Building extra-backgrounds
cd ../gnome-backgrounds-extra  || exit 1
source gnome-backgrounds-extra.SlackBuild
upgradepkg --install-new --reinstall $OUTPUT/$PRGNAM-$VERSION-$ARCH-$BUILD$TAG.$PKGTYPE
