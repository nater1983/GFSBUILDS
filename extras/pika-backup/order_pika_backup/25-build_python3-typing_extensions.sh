#!/bin/bash
echo Building python3-typing_extensions
cd ../python3-typing_extensions || exit 1
source python3-typing_extensions.SlackBuild
upgradepkg --install-new --reinstall
$OUTPUT/$PRGNAM-$VERSION-$ARCH-$BUILD$TAG.$PKGTYPE
