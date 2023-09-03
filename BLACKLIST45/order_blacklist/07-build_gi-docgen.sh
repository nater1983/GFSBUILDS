#!/bin/bash
GG=$(pwd)
echo "$GG"
ln -s ../gi-docge/* .
echo Building gi-docgen
cd ../gi-docgen  || exit 1
source gi-docgen.SlackBuild
upgradepkg --install-new --reinstall $OUTPUT/${PRGNAM}-${VERSION}-${ARCH}-${BUILD}${TAG}.${PKGTYPE:-tgz}
cd "$GG"
find . -lname "*" -delete
echo "done"


