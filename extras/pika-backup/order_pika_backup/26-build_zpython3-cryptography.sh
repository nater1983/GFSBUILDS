#!/bin/bash
echo Building python-cryptography
cd ../python-cryptography || exit 1
source python-cryptography.SlackBuild
upgradepkg --install-new --reinstall $OUTPUT/$PRGNAM-$VERSION-$ARCH-$BUILD$TAG.$PKGTYPE
