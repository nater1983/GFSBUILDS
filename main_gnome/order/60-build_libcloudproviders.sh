#!/bin/bash
echo Building libcloudproviders
cd ../libcloudproviders  || exit 1
source libcloudproviders.SlackBuild
upgradepkg --install-new --reinstall $OUTPUT/$PRGNAM-$VERSION-$ARCH-$BUILD$TAG.$PKGTYPE
