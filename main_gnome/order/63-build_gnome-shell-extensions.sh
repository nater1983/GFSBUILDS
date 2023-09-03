#!/bin/bash
echo Building gnome-shell-extensions
cd ../gnome-shell-extensions  || exit 1
source gnome-shell-extensions.SlackBuild
upgradepkg --install-new --reinstall $OUTPUT/$PRGNAM-$VERSION-$ARCH-$BUILD$TAG.$PKGTYPE
