#!/bin/bash
echo Building yajl
cd ../yajl || exit 1
source yajl.SlackBuild
upgradepkg --install-new --reinstall $OUTPUT/$PKGNAM-$VERSION-$ARCH-$BUILD$TAG.$PKGTYPE
