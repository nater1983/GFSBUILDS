#!/bin/bash
GG=$(pwd)
echo "$GG"
ln -s ../AppStream/* .
echo Building AppStream
cd ../AppStream  || exit 1
source AppStream.SlackBuild
upgradepkg --install-new --reinstall $OUTPUT/${PRGNAM}-${VERSION}-${ARCH}-${BUILD}${TAG}.${PKGTYPE:-tgz}
cd "$GG"
find . -lname "*" -delete
echo "done"

