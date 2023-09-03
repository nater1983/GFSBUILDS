#!/bin/bash

cd ../at-spi2-core || exit 1

source at-spi2-core.SlackBuild
upgradepkg --install-new --reinstall $OUTPUT/$PKGNAM-$VERSION-$ARCH-$BUILD$TAG.$PKGTYPE

