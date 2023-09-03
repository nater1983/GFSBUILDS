#!/bin/bash
echo Building colord-gtk
cd ../colord-gtk  || exit 1
source colord-gtk.SlackBuild
upgradepkg --install-new --reinstall $OUTPUT/$PRGNAM-$VERSION-$ARCH-$BUILD$TAG.$PKGTYPE
