#!/bin/bash
echo Building mutter
cd ../mutter  || exit 1
source mutter.SlackBuild
upgradepkg --install-new --reinstall $OUTPUT/$PRGNAM-$VERSION-$ARCH-$BUILD$TAG.$PKGTYPE
