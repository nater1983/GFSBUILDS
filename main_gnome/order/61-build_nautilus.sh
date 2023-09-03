#!/bin/bash
echo Building nautilus
cd ../nautilus  || exit 1
source nautilus.SlackBuild
upgradepkg --install-new --reinstall $OUTPUT/$PRGNAM-$VERSION-$ARCH-$BUILD$TAG.$PKGTYPE
