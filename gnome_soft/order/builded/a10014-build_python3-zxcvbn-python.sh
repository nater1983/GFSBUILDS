#!/bin/bash
PP=python3-zxcvbn-python
echo "$PP" 
cd ../python3-zxcvbn-python || exit 1
source python3-zxcvbn-python.SlackBuild
upgradepkg --install-new --reinstall $OUTPUT/$PRGNAM-$VERSION-$ARCH-$BUILD$TAG.$PKGTYPE
