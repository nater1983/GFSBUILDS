#!/bin/bash
echo Building gtksourceview5
cd ../gtksourceview5  || exit 1
source gtksourceview5.SlackBuild
upgradepkg --install-new --reinstall $OUTPUT/$PRGNAM-$VERSION-$ARCH-$BUILD$TAG.$PKGTYPE
