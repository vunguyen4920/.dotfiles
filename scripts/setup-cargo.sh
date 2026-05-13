#!/usr/bin/env bash
#
# Install homebrew and essential packages

if ! type cargo > /dev/null 2>&1; then
  echo "Installing Cargo ~ Rustup..."
  /bin/bash -c "$(curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- --no-modify-path)"
fi

PACKAGES=(
  "bob-nvim"
  "kanata"
  "kingler"
  "starship"
  "tree-sitter-cli"
)

echo "Checking Cargo packages..."

list=$(cargo install --list)

for PKG in "${PACKAGES[@]}"
do
  if ! echo "$list" | grep -q "$PKG"; then
    echo "Cargo Installing $PKG..."
    cargo install --locked $PKG
  fi
done

echo "All packages installed."
