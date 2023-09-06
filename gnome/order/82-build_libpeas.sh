#!/bin/bash
echo Building libpeas
cd ../libpeas  || exit 1
source libpeas.SlackBuild
upgradepkg --install-new --reinstall $OUTPUT/$PRGNAM-$VERSION-$ARCH-$BUILD$TAG.$PKGTYPE
