#!/bin/bash
echo Building python-guzzle_sphinx_theme
cd ../python-guzzle_sphinx_theme || exit 1
source python-guzzle_sphinx_theme.SlackBuild
upgradepkg --install-new --reinstall $OUTPUT/$PRGNAM-$VERSION-$ARCH-$BUILD$TAG.$PKGTYPE
