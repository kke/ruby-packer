#!/bin/sh

set -uex

if [ "$TRAVIS_OS_NAME" = "osx" ]; then
  brew update
  brew install squashfs
  brew install texinfo
  brew install openssl
else
  sudo apt-get install -y -q openssl squashfs-tools texinfo curl
fi

