#!/bin/bash
echo Building python-typing_extensions
cd ../python-typing_extensions || exit 1
source python-typing_extensions.SlackBuild
upgradepkg --install-new --reinstall $OUTPUT/$PRGNAM-$VERSION-$ARCH-$BUILD$TAG.$PKGTYPE
