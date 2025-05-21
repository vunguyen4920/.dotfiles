#!/usr/bin/env bash
#
# Install homebrew and essential packages

if ! type brew > /dev/null 2>&1; then
  echo "Installing Homebrew..."
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

export HOMEBREW_NO_AUTO_UPDATE=1
export HOMEBREW_NO_INSTALL_UPGRADE=1

PACKAGES=(
  "asdf"
  "chafa"
  "fd"
  "git"
  "git-lfs"
  "gnupg"
  "imagemagick"
  "pass"
  "ripgrep"
  "rustup"
  "thefuck"
  "tmux"
  "uv"
  "wget"
  "zsh"
  "zsh-autosuggestions"
  "zsh-syntax-highlighting"
)

echo "Checking Homebrew packages..."

list=$(brew list --formulae -1)

for PKG in "${PACKAGES[@]}"
do
  if ! echo "$list" | grep -q "$PKG"; then
    echo "Homebrew Installing $PKG..."
    brew install $PKG
  fi
done

echo "All packages installed."
