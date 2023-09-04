#!/bin/bash

cd ../mozjs115 || exit 1

source mozjs115.SlackBuild
upgradepkg --install-new --reinstall $OUTPUT/$PRGNAM-$VERSION-$ARCH-$BUILD$TAG.$PKGTYPE
