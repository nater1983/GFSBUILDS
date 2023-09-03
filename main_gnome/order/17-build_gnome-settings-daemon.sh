#!/bin/bash
echo Building gnome-settings-daemon
cd ../gnome-settings-daemon  || exit 1
source gnome-settings-daemon.SlackBuild
upgradepkg --install-new --reinstall $OUTPUT/$PRGNAM-$VERSION-$ARCH-$BUILD$TAG.$PKGTYPE
