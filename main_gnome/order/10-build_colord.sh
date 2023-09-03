#!/bin/bash
echo Building colord
cd ../colord  || exit 1
source colord.SlackBuild
upgradepkg --install-new --reinstall $OUTPUT/$PRGNAM-$VERSION-$ARCH-$BUILD$TAG.$PKGTYPE
