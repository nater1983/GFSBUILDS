#!/bin/bash
echo Building pyatspi
cd ../pyatspi  || exit 1
source pyatspi.SlackBuild
upgradepkg --install-new --reinstall $OUTPUT/$PRGNAM-$VERSION-$ARCH-$BUILD$TAG.$PKGTYPE
