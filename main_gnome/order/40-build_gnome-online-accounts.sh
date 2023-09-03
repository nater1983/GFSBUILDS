#!/bin/bash
echo Building gnome-online-accounts
cd ../gnome-online-accounts  || exit 1
source gnome-online-accounts.SlackBuild
upgradepkg --install-new --reinstall $OUTPUT/$PRGNAM-$VERSION-$ARCH-$BUILD$TAG.$PKGTYPE
