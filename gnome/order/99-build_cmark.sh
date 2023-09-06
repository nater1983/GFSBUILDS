#!/bin/bash
echo Building cmark
cd ../cmark  || exit 1
source cmark.SlackBuild
upgradepkg --install-new --reinstall $OUTPUT/$PRGNAM-$VERSION-$ARCH-$BUILD$TAG.$PKGTYPE
