#!/bin/bash
echo Building libgedit-gtksourceview
cd ../libgedit-gtksourceview  || exit 1
source libgedit-gtksourceview.SlackBuild
upgradepkg --install-new --reinstall $OUTPUT/$PRGNAM-$VERSION-$ARCH-$BUILD$TAG.$PKGTYPE
