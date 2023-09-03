#!/bin/bash
echo Building libportal
cd ../libportal  || exit 1
source libportal.SlackBuild
upgradepkg --install-new --reinstall $OUTPUT/$PRGNAM-$VERSION-$ARCH-$BUILD$TAG.$PKGTYPE
