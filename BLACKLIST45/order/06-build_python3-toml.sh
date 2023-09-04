#!/bin/bash
GG=$(pwd)
echo "$GG"
ln -s ../python3-toml/* .
echo Building python3-toml
cd ../python3-toml  || exit 1
source python3-toml.SlackBuild
upgradepkg --install-new --reinstall $OUTPUT/${PRGNAM}-${VERSION}-${ARCH}-${BUILD}${TAG}.${PKGTYPE:-tgz}
cd "$GG"
find . -lname "*" -delete
echo "done"


