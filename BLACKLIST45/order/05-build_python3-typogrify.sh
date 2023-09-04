#!/bin/bash
GG=$(pwd)
echo "$GG"
ln -s ../python3-typogrify/* .
echo Building python3-typogrify
cd ../python3-typogrify  || exit 1
source python3-typogrify.SlackBuild
upgradepkg --install-new --reinstall $OUTPUT/${PRGNAM}-${VERSION}-${ARCH}-${BUILD}${TAG}.${PKGTYPE:-tgz}
cd "$GG"
find . -lname "*" -delete
echo "done"

