#!/bin/bash
echo Building python3-guzzle_sphinx_theme
cd ../python3-guzzle_sphinx_theme || exit 1
source python3-guzzle_sphinx_theme.SlackBuild
upgradepkg --install-new --reinstall
$OUTPUT/$PRGNAM-$VERSION-$ARCH-$BUILD$TAG.$PKGTYPE
