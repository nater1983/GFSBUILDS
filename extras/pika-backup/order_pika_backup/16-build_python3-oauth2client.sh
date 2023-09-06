#!/bin/bash
echo Building python-oauth2client
cd ../python-oauth2client || exit 1
source python-oauth2client.SlackBuild
upgradepkg --install-new --reinstall $OUTPUT/$PRGNAM-$VERSION-$ARCH-$BUILD$TAG.$PKGTYPE
