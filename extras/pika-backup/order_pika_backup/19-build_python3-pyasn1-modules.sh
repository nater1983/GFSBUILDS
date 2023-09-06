#!/bin/bash
echo Building python-pyasn1-modules
cd ../python-pyasn1-modules || exit 1
source python-pyasn1-modules.SlackBuild
upgradepkg --install-new --reinstall $OUTPUT/$PRGNAM-$VERSION-$ARCH-$BUILD$TAG.$PKGTYPE
