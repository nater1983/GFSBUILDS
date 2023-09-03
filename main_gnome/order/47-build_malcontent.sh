#!/bin/bash
echo Building malcontent
cd ../malcontent  || exit 1
source malcontent.SlackBuild
upgradepkg --install-new --reinstall $OUTPUT/$PRGNAM-$VERSION-$ARCH-$BUILD$TAG.$PKGTYPE
