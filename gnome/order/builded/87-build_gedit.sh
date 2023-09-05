#!/bin/bash
echo Building gedit
cd ../gedit  || exit 1
source gedit.SlackBuild
upgradepkg --install-new --reinstall $OUTPUT/$PRGNAM-$VERSION-$ARCH-$BUILD$TAG.$PKGTYPE
