#!/bin/bash
echo Building webp-pixbuf-loader
cd ../webp-pixbuf-loader  || exit 1
source webp-pixbuf-loader.SlackBuild
upgradepkg --install-new --reinstall $OUTPUT/$PRGNAM-$VERSION-$ARCH-$BUILD$TAG.$PKGTYPE
