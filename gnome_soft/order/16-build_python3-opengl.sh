#!/bin/bash
echo Building python3-opengl
cd ../python3-opengl  || exit 1
source python3-opengl.SlackBuild
upgradepkg --install-new --reinstall $OUTPUT/$PRGNAM-$VERSION-$ARCH-$BUILD$TAG.$PKGTYPE

