#!/usr/bin/env bash
#
# Install homebrew and essential packages

echo "* This should be installed by Homebrew"
if ! type cargo > /dev/null 2>&1; then
  echo "Installing Cargo ~ Rustup..."
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

PACKAGES=(
  "bob-nvim"
  "kingler"
  "starship"
)

echo "Checking Cargo packages..."

list=$(cargo install --list)

for PKG in "${PACKAGES[@]}"
do
  if ! echo "$list" | grep -q "$PKG"; then
    echo "Cargo Installing $PKG..."
    cargo install $PKG
  fi
done

echo "All packages installed."
