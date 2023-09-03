#!/bin/bash

cd ../gvfs || exit 1
source gvfs.SlackBuild
upgradepkg --install-new --reinstall $OUTPUT/$PKGNAM-$VERSION-$ARCH-$BUILD$TAG.$PKGTYPE

