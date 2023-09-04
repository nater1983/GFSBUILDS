#!/bin/bash
echo Building gtranslator
cd ../gtranslator || exit 1
source gtranslator.SlackBuild
upgradepkg --install-new --reinstall $OUTPUT/$PRGNAM-$VERSION-$ARCH-$BUILD$TAG.$PKGTYPE
