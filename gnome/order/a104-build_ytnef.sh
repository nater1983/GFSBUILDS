#!/bin/bash
echo Building ytnef
cd ../ytnef  || exit 1
source ytnef.SlackBuild
upgradepkg --install-new --reinstall $OUTPUT/$PRGNAM-$VERSION-$ARCH-$BUILD$TAG.$PKGTYPE
