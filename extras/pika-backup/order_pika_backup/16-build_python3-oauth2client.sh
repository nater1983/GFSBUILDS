#!/bin/bash
echo Building python3-oauth2client
cd ../python3-oauth2client || exit 1
source python3-oauth2client.SlackBuild
upgradepkg --install-new --reinstall
$OUTPUT/$PRGNAM-$VERSION-$ARCH-$BUILD$TAG.$PKGTYPE
