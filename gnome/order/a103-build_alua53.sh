#!/bin/bash
echo Building lua53
cd ../lua53  || exit 1
source lua53.SlackBuild
installpkg $OUTPUT/$PRGNAM-$VERSION-$ARCH-$BUILD$TAG.$PKGTYPE
