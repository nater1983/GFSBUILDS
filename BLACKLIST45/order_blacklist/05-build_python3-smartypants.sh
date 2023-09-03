#!/bin/bash
GG=$(pwd)
echo "$GG"
ln -s ../python3-smartypants/* .
echo Building python3-smartypants
cd ../python3-smartypants  || exit 1
source python3-smartypants.SlackBuild
upgradepkg --install-new --reinstall $OUTPUT/${PRGNAM}-${VERSION}-${ARCH}-${BUILD}${TAG}.${PKGTYPE:-tgz}
cd "$GG"
find . -lname "*" -delete
echo "done"


