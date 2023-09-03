#!/bin/bash
echo Building gtk-vnc
cd ../gtk-vnc || exit 1
source gtk-vnc.SlackBuild
upgradepkg --install-new --reinstall
$OUTPUT/$PKGNAM-$VERSION-$ARCH-$BUILD$TAG.$PKGTYPE
