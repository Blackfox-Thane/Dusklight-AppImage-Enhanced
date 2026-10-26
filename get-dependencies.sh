#!/bin/sh

set -eu

ARCH=$(uname -m)

echo "Installing package dependencies..."
echo "---------------------------------------------------------------"
sudo pacman -Syu --noconfirm \
  clang \
  cmake \
  freetype2 \
  ninja \
  python \
  python-markupsafe

echo "Installing debloated packages..."
echo "---------------------------------------------------------------"
./get-debloated-pkgs --add-common --prefer-nano

# Comment this out if you need an AUR package
sudo ./make-aur-package dusklight
