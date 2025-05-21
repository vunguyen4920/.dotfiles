#!/usr/bin/env bash
#
# Install homebrew and essential packages

if ! echo $ZSH; then
  echo "Installing OhMyZsh..."
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)",
fi

echo "OhMyZsh installed."
