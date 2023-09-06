#!/bin/bash
echo Building glycin-loaders
cd ../glycin-loaders  || exit 1
source glycin-loaders.SlackBuild
upgradepkg --install-new --reinstall $OUTPUT/$PRGNAM-$VERSION-$ARCH-$BUILD$TAG.$PKGTYPE
