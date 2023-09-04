#!/bin/bash
echo Building python3-glm
cd ../python3-glm  || exit 1
source python3-glm.SlackBuild
upgradepkg --install-new --reinstall $OUTPUT/$PRGNAM-$VERSION-$ARCH-$BUILD$TAG.$PKGTYPE
