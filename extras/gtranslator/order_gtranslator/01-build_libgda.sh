#!/bin/bash
echo Building libgda
cd ../libgda || exit 1
source libgda.SlackBuild
upgradepkg --install-new --reinstall $OUTPUT/$PKGNAM-$VERSION-$ARCH-$BUILD$TAG.$PKGTYPE
