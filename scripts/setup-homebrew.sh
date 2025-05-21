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

CASK_PACKAGES=(
  "font-maple-mono-nf"
)

echo "Checking Homebrew packages..."

list=$(brew list --formulae -1)
cask_list=$(brew list --cask -1)

for PKG in "${PACKAGES[@]}"
do
  if ! echo "$list" | grep -q "$PKG"; then
    echo "Homebrew Installing $PKG..."
    brew install $PKG
  fi
done

for PKG in "${CASK_PACKAGES[@]}"
do
  if ! echo "$cask_list" | grep -q "$PKG"; then
    echo "Homebrew Cask Installing $PKG..."
    brew install --cask $PKG
  fi
done

echo "All packages installed."
