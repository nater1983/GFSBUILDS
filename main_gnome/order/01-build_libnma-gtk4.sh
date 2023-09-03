#!/bin/bash
GG=$(pwd)
echo "$GG"
ln -s ../libnma-gtk4/* .
echo Building libnma-gtk4
cd ../libnma-gtk4 || exit 1
source libnma-gtk4.SlackBuild
upgradepkg --install-new --reinstall $OUTPUT/${PRGNAM}-${VERSION}-${ARCH}-${BUILD}${TAG}.${PKGTYPE:-tgz}
cd "$GG"
find . -lname "*" -delete
echo "done"

