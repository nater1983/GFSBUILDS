#!/bin/bash
GG=$(pwd)
echo "$GG"
ln -s ../gcr4/* .
echo Building gcr4
cd ../gcr4  || exit 1
source gcr4.SlackBuild
upgradepkg --install-new --reinstall $OUTPUT/$PRGNAM-$VERSION-$ARCH-$BUILD$TAG.$PKGTYPE
cd "$GG"
find . -lname "*" -delete
echo "done"


