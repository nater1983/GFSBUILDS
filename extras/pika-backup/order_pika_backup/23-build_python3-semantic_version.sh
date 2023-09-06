#!/bin/bash
echo Building python-semantic_version
cd ../python-semantic_version || exit 1
source python-semantic_version.SlackBuild
upgradepkg --install-new --reinstall $OUTPUT/$PRGNAM-$VERSION-$ARCH-$BUILD$TAG.$PKGTYPE
