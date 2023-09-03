#!/bin/bash
echo Building spice-gtk
cd ../spice-gtk || exit 1
source spice-gtk.SlackBuild
upgradepkg --install-new --reinstall
$OUTPUT/$PKGNAM-$VERSION-$ARCH-$BUILD$TAG.$PKGTYPE
