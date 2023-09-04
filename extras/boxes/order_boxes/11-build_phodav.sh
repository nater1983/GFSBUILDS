#!/bin/bash
echo Building phodav
cd ../phodav || exit 1
source phodav.SlackBuild
upgradepkg --install-new --reinstall $OUTPUT/$PRGNAM-$VERSION-$ARCH-$BUILD$TAG.$PKGTYPE
