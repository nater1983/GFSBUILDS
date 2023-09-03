#!/bin/bash
GG=$(pwd)
echo "$GG"
ln -s ../libadwaita/* .
echo Building libadwaita
cd ../libadwaita  || exit 1
source libadwaita.SlackBuild
upgradepkg --install-new --reinstall $OUTPUT/${PRGNAM}-${VERSION}-${ARCH}-${BUILD}${TAG}.${PKGTYPE:-tgz}
cd "$GG"
find . -lname "*" -delete
echo "done"

