#!/bin/bash
echo Building grilo-plugins
cd ../grilo-plugins  || exit 1
source grilo-plugins.SlackBuild
upgradepkg --install-new --reinstall $OUTPUT/$PRGNAM-$VERSION-$ARCH-$BUILD$TAG.$PKGTYPE
