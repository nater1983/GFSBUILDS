#!/bin/bash
echo Building jq
cd ../jq  || exit 1
source jq.SlackBuild
upgradepkg --install-new --reinstall $OUTPUT/$PRGNAM-$VERSION-$ARCH-$BUILD$TAG.$PKGTYPE
