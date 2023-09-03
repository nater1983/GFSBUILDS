#!/bin/bash
echo Building gnome-session
cd ../gnome-session  || exit 1
source gnome-session.SlackBuild
upgradepkg --install-new --reinstall $OUTPUT/$PRGNAM-$VERSION-$ARCH-$BUILD$TAG.$PKGTYPE
