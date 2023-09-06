#!/bin/bash
echo Building baobab
cd ../baobab  || exit 1
source baobab.SlackBuild
upgradepkg --install-new --reinstall $OUTPUT/$PRGNAM-$VERSION-$ARCH-$BUILD$TAG.$PKGTYPE
