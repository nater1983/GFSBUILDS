#!/bin/bash
echo Building file-roller
cd ../file-roller  || exit 1
source file-roller.SlackBuild
upgradepkg --install-new --reinstall $OUTPUT/$PRGNAM-$VERSION-$ARCH-$BUILD$TAG.$PKGTYPE
